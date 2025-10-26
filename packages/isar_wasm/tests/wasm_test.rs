//! Tests for the WASM package
//! 
//! These tests verify that the WASM implementation works correctly.

use wasm_bindgen_test::*;
use isar_wasm::*;

wasm_bindgen_test_configure!(run_in_browser);

#[wasm_bindgen_test]
fn test_wasm_module_initialization() {
    // Test that the WASM module can be initialized
    let version = get_version();
    assert!(!version.is_empty());
    assert!(version.contains("1.0.0"));
}

#[wasm_bindgen_test]
fn test_wasm_function() {
    // Test the basic WASM function
    let result = test_wasm();
    assert_eq!(result, "WASM module is working!");
}

#[wasm_bindgen_test]
fn test_instance_creation() {
    // Test creating a WASM instance
    let instance = WasmInstance::new("test_db").unwrap();
    assert_eq!(instance.name(), "test_db");
}

#[wasm_bindgen_test]
fn test_instance_operations() {
    // Test basic instance operations
    let instance = WasmInstance::new("test_db").unwrap();
    
    // Test adding a collection
    instance.add_collection("users", r#"{"id": "int", "name": "string"}"#).unwrap();
    
    // Test listing collections
    let collections = instance.list_collections().unwrap();
    assert_eq!(collections.len(), 1);
    assert_eq!(collections[0], "users");
    
    // Test getting collection info
    let info = instance.get_collection_info("users").unwrap();
    assert!(!info.is_undefined());
}

#[wasm_bindgen_test]
fn test_storage_operations() {
    // Test storage operations
    let mut storage = WasmStorageWrapper::new("test_storage").unwrap();
    
    // Test storing data
    storage.store("key1", "value1").unwrap();
    
    // Test retrieving data
    let value = storage.retrieve("key1").unwrap();
    assert_eq!(value, Some("value1".to_string()));
    
    // Test retrieving non-existent data
    let value = storage.retrieve("nonexistent").unwrap();
    assert_eq!(value, None);
}

#[wasm_bindgen_test]
fn test_utils() {
    // Test utility functions
    let timestamp = WasmUtils::get_timestamp();
    assert!(timestamp > 0.0);
    
    let id = WasmUtils::generate_id();
    assert!(!id.is_empty());
    
    let is_web = WasmUtils::is_web();
    assert!(is_web);
    
    let user_agent = WasmUtils::get_user_agent();
    assert!(!user_agent.is_empty());
}
