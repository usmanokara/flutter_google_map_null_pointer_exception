package com.dotsbit.flutter_google_map_null_pointer_exception.flutter_google_map_null_pointer_exception

import android.app.Activity
import android.content.Context
import android.util.Log
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import com.google.android.gms.maps.MapsInitializer
import com.google.android.gms.maps.MapsInitializer.Renderer
/** FlutterGoogleMapNullPointerExceptionPlugin */
class FlutterGoogleMapNullPointerExceptionPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var activity: Activity
  private lateinit var context: Context
  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_google_map_null_pointer_exception")
    channel.setMethodCallHandler(this)
    this.context = flutterPluginBinding.applicationContext

  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "enableGoogleLatestMap") {
      MapsInitializer.initialize(context, Renderer.LATEST, null)
      result.success("Latest map renderer set")
    } else {
      result.notImplemented()
    }
  }

/*
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "fluttertoast")
      channel.setMethodCallHandler(FluttertoastPlugin())
    }
  }*/
  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
 /* override fun onMapsSdkInitialized(renderer: MapsInitializer.Renderer) {
    when (renderer) {
      Renderer.LATEST -> Log.d(
        "NewRendererLog",
        "The latest version of the renderer is used."
      )
      Renderer.LEGACY -> Log.d(
        "NewRendererLog",
        "The legacy version of the renderer is used ."
      )
    }
  }*/
}
