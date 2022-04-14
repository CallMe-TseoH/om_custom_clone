import 'package:get/get.dart';
import 'package:om_custom_clone/src/app/lang/en_US.dart';
import 'package:om_custom_clone/src/app/lang/fr_FR.dart';

class AppLocalisation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "fr":frFR,
    "en":enUS,
  };

}