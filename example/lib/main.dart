import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_google_map_null_pointer_exception/flutter_google_map_null_pointer_exception.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _enableStatus = 'Unknown';
  final _flutterGoogleMapNullPointerExceptionPlugin = FlutterGoogleMapNullPointerException();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String enableStatus;

    try {
      enableStatus =
          await _flutterGoogleMapNullPointerExceptionPlugin.enableGoogleLatestMap() ?? 'Unknown error accured';
    } on PlatformException {
      enableStatus = 'Failed to update renderer';
    }

    if (!mounted) return;

    setState(() {
      _enableStatus = enableStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_enableStatus\n'),
        ),
      ),
    );
  }
}
