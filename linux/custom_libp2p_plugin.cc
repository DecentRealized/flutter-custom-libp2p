#include "include/custom_libp2p/custom_lib_p2_p_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#include <cstring>

#define CUSTOM_LIBP2P_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), custom_libp2p_plugin_get_type(), \
                              CustomLibP2PPlugin))

struct _CustomLibP2PPlugin {
  GObject parent_instance;
};

G_DEFINE_TYPE(CustomLibP2PPlugin, custom_libp2p_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void custom_libp2p_plugin_handle_method_call(
    CustomLibP2PPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

   response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());

  fl_method_call_respond(method_call, response, nullptr);
}

static void custom_libp2p_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(custom_libp2p_plugin_parent_class)->dispose(object);
}

static void custom_libp2p_plugin_class_init(CustomLibP2PPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = custom_libp2p_plugin_dispose;
}

static void custom_libp2p_plugin_init(CustomLibP2PPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  CustomLibP2PPlugin* plugin = CUSTOM_LIBP2P_PLUGIN(user_data);
  custom_libp2p_plugin_handle_method_call(plugin, method_call);
}

void custom_lib_p2_p_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  CustomLibP2PPlugin* plugin = CUSTOM_LIBP2P_PLUGIN(
      g_object_new(custom_libp2p_plugin_get_type(), nullptr));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "custom_libp2p",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}
