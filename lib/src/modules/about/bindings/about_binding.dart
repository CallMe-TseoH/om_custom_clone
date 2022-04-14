import 'package:get/get.dart';
import 'package:om_custom_clone/src/modules/about/controllers/about_controller.dart';

class AboutBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AboutController());
  }

}