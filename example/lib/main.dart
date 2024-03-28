import 'package:flutter/material.dart';
import 'dart:async';

import 'package:demo_plugin_to_upper_case/demo_plugin_to_upper_case.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getUpperCaseText(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Plugin example app'),
              ),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Plugin example app'),
              ),
              body: Center(
                child: Text('Error: ${snapshot.error}'),
              ),
            ),
          );
        } else {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Plugin example app'),
              ),
              body: Center(
                child: Text('Running on: ${snapshot.data}'),
              ),
            ),
          );
        }
      },
    );
  }

  Future<String> _getUpperCaseText() async {
    String text = "hello world";
    String upperCaseText = await DemoPluginToUpperCase.toUpperCase(text);
    print(upperCaseText);
    return upperCaseText;
  }
}

