import 'package:get/get.dart';
import 'package:om_custom_clone/src/modules/security/controller/security_controller.dart';

class SecurityBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityController());
  }

}