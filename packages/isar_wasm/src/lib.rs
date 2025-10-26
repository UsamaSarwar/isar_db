//! Isar WASM - WebAssembly implementation for Isar database
//! 
//! This package provides a WASM-compatible implementation of the Isar database
//! using sqlite-wasm-rs for SQLite functionality in web environments.

use wasm_bindgen::prelude::*;

// When the `wee_alloc` feature is enabled, use `wee_alloc` as the global
// allocator.
#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

// Set up console error panic hook for better debugging
#[cfg(feature = "console_error_panic_hook")]
#[wasm_bindgen(start)]
pub fn main() {
    console_error_panic_hook::set_once();
}

// Re-export the main WASM functionality
pub mod instance;
pub mod storage;
pub mod utils;

use instance::WasmInstance;

/// Initialize the WASM module
#[wasm_bindgen]
pub fn init() {
    #[cfg(feature = "console_error_panic_hook")]
    console_error_panic_hook::set_once();
}

/// Create a new WASM instance
#[wasm_bindgen]
pub fn create_instance(name: &str) -> Result<WasmInstance, JsValue> {
    WasmInstance::new(name)
}

/// Get the version of the WASM module
#[wasm_bindgen]
pub fn get_version() -> String {
    env!("CARGO_PKG_VERSION").to_string()
}

/// Test function to verify WASM module is working
#[wasm_bindgen]
pub fn test_wasm() -> String {
    "WASM module is working!".to_string()
}
