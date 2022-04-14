import 'package:get/get.dart';
import 'package:om_custom_clone/src/modules/app_navigator/controllers/app_navigator_controller.dart';
import 'package:om_custom_clone/src/modules/home/controllers/home_controller.dart';
import 'package:om_custom_clone/src/modules/partner/controllers/partner_controller.dart';

class AppNavigatorBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AppNavigatorController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => PartnerController());
  }

}