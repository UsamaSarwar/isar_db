//! WASM Instance implementation
//! 
//! This module provides the main WASM instance that manages database operations
//! using sqlite-wasm-rs for SQLite functionality.

use wasm_bindgen::prelude::*;
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::sync::Mutex;
use serde_wasm_bindgen::to_value;

use crate::storage::WasmStorage;

// Helper macro for console logging in WASM
macro_rules! console_log {
    ($($t:tt)*) => (web_sys::console::log_1(&format_args!($($t)*).to_string().into()))
}

/// WASM Instance for managing database operations
#[wasm_bindgen]
pub struct WasmInstance {
    name: String,
    storage: Mutex<Option<WasmStorage>>,
    collections: Mutex<HashMap<String, CollectionInfo>>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
struct CollectionInfo {
    name: String,
    schema: String,
    indexes: Vec<String>,
}

#[wasm_bindgen]
impl WasmInstance {
    /// Create a new WASM instance
    #[wasm_bindgen(constructor)]
    pub fn new(name: &str) -> Result<WasmInstance, JsValue> {
        console_log!("Creating WASM instance: {}", name);
        
        Ok(WasmInstance {
            name: name.to_string(),
            storage: Mutex::new(None),
            collections: Mutex::new(HashMap::new()),
        })
    }

    /// Get the instance name
    #[wasm_bindgen(getter)]
    pub fn name(&self) -> String {
        self.name.clone()
    }

    /// Initialize the storage backend
    #[wasm_bindgen]
    pub fn init_storage(&self) -> Result<(), JsValue> {
        console_log!("Initializing storage for instance: {}", self.name);
        
        let mut storage_guard = self.storage.lock().map_err(|e| {
            JsValue::from_str(&format!("Failed to lock storage: {}", e))
        })?;
        
        if storage_guard.is_none() {
            *storage_guard = Some(WasmStorage::new(&self.name)?);
        }
        
        Ok(())
    }

    /// Add a collection to the instance
    #[wasm_bindgen]
    pub fn add_collection(&self, name: &str, schema: &str) -> Result<(), JsValue> {
        console_log!("Adding collection: {} with schema: {}", name, schema);
        
        let mut collections_guard = self.collections.lock().map_err(|e| {
            JsValue::from_str(&format!("Failed to lock collections: {}", e))
        })?;
        
        let collection_info = CollectionInfo {
            name: name.to_string(),
            schema: schema.to_string(),
            indexes: Vec::new(),
        };
        
        collections_guard.insert(name.to_string(), collection_info);
        
        Ok(())
    }

    /// Get collection information
    #[wasm_bindgen]
    pub fn get_collection_info(&self, name: &str) -> Result<JsValue, JsValue> {
        let collections_guard = self.collections.lock().map_err(|e| {
            JsValue::from_str(&format!("Failed to lock collections: {}", e))
        })?;
        
        if let Some(collection) = collections_guard.get(name) {
            Ok(to_value(collection).map_err(|e| {
                JsValue::from_str(&format!("Failed to serialize collection: {}", e))
            })?)
        } else {
            Err(JsValue::from_str(&format!("Collection '{}' not found", name)))
        }
    }

    /// List all collections
    #[wasm_bindgen]
    pub fn list_collections(&self) -> Result<Vec<String>, JsValue> {
        let collections_guard = self.collections.lock().map_err(|e| {
            JsValue::from_str(&format!("Failed to lock collections: {}", e))
        })?;
        
        Ok(collections_guard.keys().cloned().collect())
    }

    /// Execute a query
    #[wasm_bindgen]
    pub fn execute_query(&self, query: &str) -> Result<JsValue, JsValue> {
        console_log!("Executing query: {}", query);
        
        let storage_guard = self.storage.lock().map_err(|e| {
            JsValue::from_str(&format!("Failed to lock storage: {}", e))
        })?;
        
        if let Some(storage) = storage_guard.as_ref() {
            storage.execute_query(query)
        } else {
            Err(JsValue::from_str("Storage not initialized"))
        }
    }

    /// Close the instance
    #[wasm_bindgen]
    pub fn close(&self) -> Result<(), JsValue> {
        console_log!("Closing WASM instance: {}", self.name);
        
        let mut storage_guard = self.storage.lock().map_err(|e| {
            JsValue::from_str(&format!("Failed to lock storage: {}", e))
        })?;
        
        if let Some(storage) = storage_guard.take() {
            storage.close()?;
        }
        
        Ok(())
    }
}
