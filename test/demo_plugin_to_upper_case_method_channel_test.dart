import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_plugin_to_upper_case/demo_plugin_to_upper_case_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelDemoPluginToUpperCase platform = MethodChannelDemoPluginToUpperCase();
  const MethodChannel channel = MethodChannel('demo_plugin_to_upper_case');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
