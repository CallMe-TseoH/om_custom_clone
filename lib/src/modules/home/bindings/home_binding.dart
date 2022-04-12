import 'package:get/get.dart';
import 'package:om_custom_clone/src/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}