import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'demo_plugin_to_upper_case_method_channel.dart';

abstract class DemoPluginToUpperCasePlatform extends PlatformInterface {
  /// Constructs a DemoPluginToUpperCasePlatform.
  DemoPluginToUpperCasePlatform() : super(token: _token);

  static final Object _token = Object();

  static DemoPluginToUpperCasePlatform _instance = MethodChannelDemoPluginToUpperCase();

  /// The default instance of [DemoPluginToUpperCasePlatform] to use.
  ///
  /// Defaults to [MethodChannelDemoPluginToUpperCase].
  static DemoPluginToUpperCasePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DemoPluginToUpperCasePlatform] when
  /// they register themselves.
  static set instance(DemoPluginToUpperCasePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
