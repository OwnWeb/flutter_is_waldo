library flutter_is_waldo;

import 'package:flutter_native_env/flutter_native_env.dart';

class FlutterWaldo {
  static Future<bool> isWaldo() async {
    return (await FlutterNativeEnv.getNativeEnv("INSIDE_WALDO", "0")) == "1";
  }
}
