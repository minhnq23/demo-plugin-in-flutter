import 'package:flutter_test/flutter_test.dart';
import 'package:demo_plugin_to_upper_case/demo_plugin_to_upper_case.dart';
import 'package:demo_plugin_to_upper_case/demo_plugin_to_upper_case_platform_interface.dart';
import 'package:demo_plugin_to_upper_case/demo_plugin_to_upper_case_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDemoPluginToUpperCasePlatform
    with MockPlatformInterfaceMixin
    implements DemoPluginToUpperCasePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DemoPluginToUpperCasePlatform initialPlatform = DemoPluginToUpperCasePlatform.instance;

  test('$MethodChannelDemoPluginToUpperCase is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDemoPluginToUpperCase>());
  });

  test('getPlatformVersion', () async {
    DemoPluginToUpperCase demoPluginToUpperCasePlugin = DemoPluginToUpperCase();
    MockDemoPluginToUpperCasePlatform fakePlatform = MockDemoPluginToUpperCasePlatform();
    DemoPluginToUpperCasePlatform.instance = fakePlatform;

    expect(await demoPluginToUpperCasePlugin.getPlatformVersion(), '42');
  });
}
