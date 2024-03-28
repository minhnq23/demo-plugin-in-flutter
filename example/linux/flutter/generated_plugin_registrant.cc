//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <demo_plugin_to_upper_case/demo_plugin_to_upper_case_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) demo_plugin_to_upper_case_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DemoPluginToUpperCasePlugin");
  demo_plugin_to_upper_case_plugin_register_with_registrar(demo_plugin_to_upper_case_registrar);
}
