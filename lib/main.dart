import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:om_custom_clone/src/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    if(kIsWeb){
      runApp(DevicePreview(
          enabled: true,
          builder:(_) {
            return const WebApp();
          }));
    }else{
      runApp(const App());
    }
  });
}

