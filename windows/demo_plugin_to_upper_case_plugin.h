#ifndef FLUTTER_PLUGIN_DEMO_PLUGIN_TO_UPPER_CASE_PLUGIN_H_
#define FLUTTER_PLUGIN_DEMO_PLUGIN_TO_UPPER_CASE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace demo_plugin_to_upper_case {

class DemoPluginToUpperCasePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DemoPluginToUpperCasePlugin();

  virtual ~DemoPluginToUpperCasePlugin();

  // Disallow copy and assign.
  DemoPluginToUpperCasePlugin(const DemoPluginToUpperCasePlugin&) = delete;
  DemoPluginToUpperCasePlugin& operator=(const DemoPluginToUpperCasePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace demo_plugin_to_upper_case

#endif  // FLUTTER_PLUGIN_DEMO_PLUGIN_TO_UPPER_CASE_PLUGIN_H_
