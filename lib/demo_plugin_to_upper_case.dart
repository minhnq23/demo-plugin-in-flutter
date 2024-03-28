
import 'package:flutter/services.dart';

import 'demo_plugin_to_upper_case_platform_interface.dart';

class DemoPluginToUpperCase {

  static const MethodChannel _channel =
  MethodChannel('upper_case_plugin');

  static Future<String> toUpperCase(String input) async {
    try {
      final String result = await _channel.invokeMethod('toUpperCase', {'input': input});
      return result;
    } catch (e) {
      print("Failed to convert to upper case: '$e'");

      return '$e';
    }
  }
}
