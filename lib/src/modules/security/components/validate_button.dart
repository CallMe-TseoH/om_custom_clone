import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/security/controller/security_controller.dart';
import 'package:om_custom_clone/src/modules/security/helpers/security_text_key.dart';

class ValidateButton extends GetView<SecurityController> {
  const ValidateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizesHelper.height(60),
      width: double.infinity,
      child: Obx(() {
        return ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all<double>(0.0),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(SizesHelper.radius(18))))),
                backgroundColor: MaterialStateProperty.all<Color>( controller.currentPinLength.value == 4? ColorsHelper.orange : Colors.grey.shade400)),
            onPressed: controller.currentPinLength.value == 4? () {
              if(controller.onCharging.isTrue) return;
              controller.connect();
            }:null,
            child: TextComponent(
              textKey: SecurityTextKey.validate,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: SizesHelper.fontSize(16),
            ));
      }),
    );
  }
}
