import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_google_map_null_pointer_exception_platform_interface.dart';

/// An implementation of [FlutterGoogleMapNullPointerExceptionPlatform] that uses method channels.
class MethodChannelFlutterGoogleMapNullPointerException extends FlutterGoogleMapNullPointerExceptionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_google_map_null_pointer_exception');

  @override
  Future<String?> enableGoogleLatestMap() async {
    final version = await methodChannel.invokeMethod<String>('enableGoogleLatestMap');
    return version;
  }
}
