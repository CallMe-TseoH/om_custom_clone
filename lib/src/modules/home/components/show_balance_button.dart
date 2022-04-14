import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/controllers/home_controller.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class ShowBalanceButton extends GetView<HomeController> {
  const ShowBalanceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextButton.icon(
        onPressed: () {
          controller.showCurrentBalance.toggle();
        },
        label: TextComponent(
          textKey: controller.showCurrentBalance.isTrue? "5 000 F CFA":HomeTextKey.showBalance,
          fontWeight: FontWeight.w800,
          textAlign: TextAlign.left,
          color: ColorsHelper.orange,
          fontSize: SizesHelper.fontSize(17.5),
        ),
        icon: Icon(
          controller.showCurrentBalance.isTrue?Icons.visibility_off_outlined  : Icons.visibility_outlined,
          color: ColorsHelper.orange,
          size: SizesHelper.fontSize(20),
        ),
      );
    });
  }
}
