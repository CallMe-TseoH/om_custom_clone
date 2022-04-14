import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/security/components/numeric_pad_button.dart';
import 'package:om_custom_clone/src/modules/security/controller/security_controller.dart';

class NumericPad extends GetView<SecurityController> {
  const NumericPad({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(25.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(controller.numericValuesIndex.sublist(0, 4).length, (index) => NumericPadButton(index: controller.numericValuesIndex.sublist(0, 4)[index],)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(controller.numericValuesIndex.sublist(4, 8).length, (index) => NumericPadButton(index: controller.numericValuesIndex.sublist(4, 8)[index],)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(controller.numericValuesIndex.sublist(8, 12).length, (index) => NumericPadButton(index: controller.numericValuesIndex.sublist(8, 12)[index],)),
          ),
        ],
      ),
    );
  }
}

// List.generate(controller.numericValuesIndex.length, (index) => NumericPadButton(index: controller.numericValuesIndex[index],))
/*Wrap(
spacing: SizesHelper.width(10),
alignment: WrapAlignment.spaceBetween,
children: List.generate(12, (index) => ExtendedContainer(
height: SizesHelper.height(35),
width: SizesHelper.height(35),
shape: BoxShape.circle,
child: MaterialInkWell(
customBorder: const CircleBorder(),
onPressed: (){

}, child: Center(child: TextComponent(textKey: '$index',fontWeight: FontWeight.w500, fontSize: SizesHelper.fontSize(18),), ),
),
)
)),*/
