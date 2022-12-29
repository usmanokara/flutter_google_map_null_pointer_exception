import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_google_map_null_pointer_exception/flutter_google_map_null_pointer_exception.dart';
import 'package:flutter_google_map_null_pointer_exception/flutter_google_map_null_pointer_exception_platform_interface.dart';
import 'package:flutter_google_map_null_pointer_exception/flutter_google_map_null_pointer_exception_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterGoogleMapNullPointerExceptionPlatform
    with MockPlatformInterfaceMixin
    implements FlutterGoogleMapNullPointerExceptionPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterGoogleMapNullPointerExceptionPlatform initialPlatform = FlutterGoogleMapNullPointerExceptionPlatform.instance;

  test('$MethodChannelFlutterGoogleMapNullPointerException is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterGoogleMapNullPointerException>());
  });

  test('getPlatformVersion', () async {
    FlutterGoogleMapNullPointerException flutterGoogleMapNullPointerExceptionPlugin = FlutterGoogleMapNullPointerException();
    MockFlutterGoogleMapNullPointerExceptionPlatform fakePlatform = MockFlutterGoogleMapNullPointerExceptionPlatform();
    FlutterGoogleMapNullPointerExceptionPlatform.instance = fakePlatform;

    expect(await flutterGoogleMapNullPointerExceptionPlugin.getPlatformVersion(), '42');
  });
}
