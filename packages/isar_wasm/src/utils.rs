//! WASM Utilities
//! 
//! This module provides utility functions for WASM operations.

use wasm_bindgen::prelude::*;

// Helper macros for console logging in WASM
macro_rules! console_log {
    ($($t:tt)*) => (web_sys::console::log_1(&format_args!($($t)*).to_string().into()))
}

macro_rules! console_error {
    ($($t:tt)*) => (web_sys::console::error_1(&format_args!($($t)*).to_string().into()))
}

/// Utility functions for WASM operations
#[wasm_bindgen]
pub struct WasmUtils;

#[wasm_bindgen]
impl WasmUtils {
    /// Get the current timestamp
    #[wasm_bindgen]
    pub fn get_timestamp() -> f64 {
        js_sys::Date::now()
    }

    /// Generate a random ID
    #[wasm_bindgen]
    pub fn generate_id() -> String {
        use std::collections::hash_map::DefaultHasher;
        use std::hash::{Hash, Hasher};
        use std::time::{SystemTime, UNIX_EPOCH};
        
        let mut hasher = DefaultHasher::new();
        let timestamp = SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .unwrap()
            .as_nanos();
        
        timestamp.hash(&mut hasher);
        format!("{:x}", hasher.finish())
    }

    /// Check if running in a web environment
    #[wasm_bindgen]
    pub fn is_web() -> bool {
        true // We're in WASM, so we're definitely in a web environment
    }

    /// Get user agent information
    #[wasm_bindgen]
    pub fn get_user_agent() -> String {
        if let Some(window) = web_sys::window() {
            let navigator = window.navigator();
            return navigator.user_agent().unwrap_or_else(|_| "Unknown".to_string());
        }
        "Unknown".to_string()
    }

    /// Log a message to the console
    #[wasm_bindgen]
    pub fn log(message: &str) {
        console_log!("{}", message);
    }

    /// Log an error to the console
    #[wasm_bindgen]
    pub fn log_error(message: &str) {
        console_error!("{}", message);
    }
}
