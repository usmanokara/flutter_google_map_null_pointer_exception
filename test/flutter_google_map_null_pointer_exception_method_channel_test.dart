import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_google_map_null_pointer_exception/flutter_google_map_null_pointer_exception_method_channel.dart';

void main() {
  MethodChannelFlutterGoogleMapNullPointerException platform = MethodChannelFlutterGoogleMapNullPointerException();
  const MethodChannel channel = MethodChannel('flutter_google_map_null_pointer_exception');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
