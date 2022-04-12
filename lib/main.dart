import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:om_custom_clone/src/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((value) async {
    runApp(const App());
  });
}

