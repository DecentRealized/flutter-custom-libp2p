#ifndef FLUTTER_PLUGIN_CUSTOM_LIBP2P_PLUGIN_H_
#define FLUTTER_PLUGIN_CUSTOM_LIBP2P_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _CustomLibP2PPlugin CustomLibP2PPlugin;
typedef struct {
  GObjectClass parent_class;
} CustomLibP2PPluginClass;

FLUTTER_PLUGIN_EXPORT GType custom_libp2p_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void custom_lib_p2_p_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_CUSTOM_LIBP2P_PLUGIN_H_
