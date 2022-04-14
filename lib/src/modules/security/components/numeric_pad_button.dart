import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/security/controller/security_controller.dart';

class NumericPadButton extends GetView<SecurityController> {
  const NumericPadButton({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    int? _value = controller.getNumericValueFromIndex(index);
    return ExtendedContainer(
      height: SizesHelper.height(60),
      width: SizesHelper.height(60),
      shape: BoxShape.circle,
      child: MaterialInkWell(
        customBorder: const CircleBorder(),
        onPressed: () => controller.onPressedNumericPadButton(index),
        child: Center(
          child: _value != null
              ? TextComponent(
                  textKey: '$_value',
                  fontWeight: FontWeight.w600,
                  fontSize: SizesHelper.fontSize(28),
                )
              : Icon( index ==10? Icons.fingerprint:Icons.backspace, color: Colors.black,),
        ),
      ),
    );
  }
}
