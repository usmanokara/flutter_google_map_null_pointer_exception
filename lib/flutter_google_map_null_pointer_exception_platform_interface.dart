import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_google_map_null_pointer_exception_method_channel.dart';

abstract class FlutterGoogleMapNullPointerExceptionPlatform extends PlatformInterface {
  /// Constructs a FlutterGoogleMapNullPointerExceptionPlatform.
  FlutterGoogleMapNullPointerExceptionPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterGoogleMapNullPointerExceptionPlatform _instance = MethodChannelFlutterGoogleMapNullPointerException();

  /// The default instance of [FlutterGoogleMapNullPointerExceptionPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterGoogleMapNullPointerException].
  static FlutterGoogleMapNullPointerExceptionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterGoogleMapNullPointerExceptionPlatform] when
  /// they register themselves.
  static set instance(FlutterGoogleMapNullPointerExceptionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> enableGoogleLatestMap() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
