//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <custom_libp2p/custom_lib_p2_p_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) custom_libp2p_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CustomLibP2PPlugin");
  custom_lib_p2_p_plugin_register_with_registrar(custom_libp2p_registrar);
}
