import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'demo_plugin_to_upper_case_platform_interface.dart';

/// An implementation of [DemoPluginToUpperCasePlatform] that uses method channels.
class MethodChannelDemoPluginToUpperCase extends DemoPluginToUpperCasePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('demo_plugin_to_upper_case');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
