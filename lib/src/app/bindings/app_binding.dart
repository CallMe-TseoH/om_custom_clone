import 'package:get/get.dart';
import 'package:om_custom_clone/src/app/controllers/app_controller.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(AppController());
  }
}