cmake_minimum_required(VERSION 3.10)
set(PROJECT_NAME "custom_libp2p")
project(${PROJECT_NAME} LANGUAGES CXX)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "custom_libp2p_plugin")

add_library(${PLUGIN_NAME} SHARED
  "custom_libp2p_plugin.cc"
)
apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter)
target_link_libraries(${PLUGIN_NAME} PRIVATE PkgConfig::GTK)

set(LIBCUSTOM_LIBP2P_BRIDGE "custom_libp2p_bridge.so")
set(LIBCUSTOM_LIBP2P_BRIDGE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/shared/${CMAKE_SYSTEM_PROCESSOR}/${LIBCUSTOM_LIBP2P_BRIDGE}")

# List of absolute paths to libraries that should be bundled with the plugin
set(custom_libp2p_bundled_libraries
  ${LIBCUSTOM_LIBP2P_BRIDGE_PATH}
  PARENT_SCOPE
)