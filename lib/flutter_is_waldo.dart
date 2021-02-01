library flutter_is_waldo;

import 'package:flutter_native_env/flutter_native_env.dart';

/// The [FlutterWaldo] class contains the [isWaldo] method
class FlutterWaldo {
  /// Returns true when app is running in a waldo instance, false otherwise
  static Future<bool> isWaldo() async {
    return (await FlutterNativeEnv.getNativeEnv("INSIDE_WALDO", "0")) == "1";
  }
}
