import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:om_custom_clone/src/routes/route_model_interface.dart';

class SecurityController extends GetxController {
  List<int> numericValuesIndex = [0, 1, 2, 3, 4, 5, 6, 7, 10, 8, 9, 11];
  List<int> numericValues = List.generate(10, (index) => index);

  //
  TextEditingController? _secretPinController;
  //
  RxBool onCharging = false.obs;
  RxInt currentPinLength = 0.obs;
  RxString errorMessage = "".obs;
  //
  void __init() {
    _secretPinController = TextEditingController();
    numericValues.shuffle();
  }

  @override
  void onInit() {
    super.onInit();
    __init();
  }
  //
  @override
  void onReady() {
    super.onReady();
    _secretPinController?.addListener(() {
      currentPinLength.value  = (_secretPinController?.text.length)!;
      if(errorMessage.value.isNotEmpty){
        errorMessage.value = "";
      }
    });
  }
  //
  void __onClose() {
    _secretPinController?.dispose();
  }

  @override
  void onClose() {
    __onClose();
    super.onClose();
  }

  //
  int? getNumericValueFromIndex(int index) {
    if (numericValues.length >= (index + 1)) {
      return numericValues.elementAt(index);
    }
    return null;
  }

  void onPressedNumericPadButton(int index){
    final int? _value = getNumericValueFromIndex(index);
    if(_value != null){
      if(_secretPinController?.text.length==4){
        return;
      }
      _secretPinController?.text = ((_secretPinController?.text)! + _value.toString());
    }else if(index == 11){
      if((_secretPinController?.text.isNotEmpty)!){
        final _lastValue = (_secretPinController?.text)!;
        _secretPinController?.text = (_lastValue.substring(0, _lastValue.length-1));
      }
    }
  }

  Future<void> connect() async {
    if(onCharging.isFalse) onCharging.toggle();
    final String _secretPin = (_secretPinController?.text.trim())!;
    if(_secretPin=="0000"){
      Future.delayed(const Duration(seconds: 3), (){
        Get.offNamed(RMI.navigator.name);
      });
    }else{
      Future.delayed(const Duration(seconds: 3), (){
        errorMessage.value = SecurityTextKey.invalidCode;
        if(onCharging.isTrue) onCharging.toggle();
      });
    }
  }
}
