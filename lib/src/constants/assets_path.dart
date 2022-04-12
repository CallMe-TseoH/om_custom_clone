import 'package:flutter/foundation.dart';

class AssetsPath{
  AssetsPath._();
  static const assetsIcon = kIsWeb? "icons/":"assets/icons/";
  static const assetsImage = kIsWeb? "images/":"assets/images/";
  static const assetsFlag = kIsWeb? "flags/":"assets/flags/";
  static const assetsFile = kIsWeb? "file/":"assets/file/";
}