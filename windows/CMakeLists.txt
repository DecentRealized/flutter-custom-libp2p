cmake_minimum_required(VERSION 3.10)
set(PROJECT_NAME "custom_libp2p")
project(${PROJECT_NAME} LANGUAGES CXX)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "custom_libp2p_plugin")

add_library(${PLUGIN_NAME} SHARED
  "custom_libp2p_plugin.cpp"
)
apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter flutter_wrapper_plugin)

# List of absolute paths to libraries that should be bundled with the plugin
set(custom_libp2p_bundled_libraries
  ""
  PARENT_SCOPE
)

set(BUILD_BUNDLE_DIR "$<TARGET_FILE_DIR:${BINARY_NAME}>")
# Make the "install" step default, as it's required to run.
set(CMAKE_VS_INCLUDE_INSTALL_TO_DEFAULT_BUILD 1)
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIR}" CACHE PATH "..." FORCE)
endif()

set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}")
set(LIBCUSTOM_LIBP2P_BRIDGE "libcustom_libp2p_bridge.dll")
set(LIBCUSTOM_LIBP2P_BRIDGE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/shared/${LIBCUSTOM_LIBP2P_BRIDGE}")
install(CODE "file(REMOVE_RECURSE \"${INSTALL_BUNDLE_LIB_DIR}/${LIBCUSTOM_LIBP2P_BRIDGE}\")" COMPONENT Runtime)
install(FILES "${LIBCUSTOM_LIBP2P_BRIDGE_PATH}" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}" COMPONENT Runtime)

