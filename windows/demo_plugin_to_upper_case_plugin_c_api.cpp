#include "include/demo_plugin_to_upper_case/demo_plugin_to_upper_case_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "demo_plugin_to_upper_case_plugin.h"

void DemoPluginToUpperCasePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  demo_plugin_to_upper_case::DemoPluginToUpperCasePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
