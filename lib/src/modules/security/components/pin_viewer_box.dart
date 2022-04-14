import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/app_spin.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/security/controller/security_controller.dart';
import 'package:om_custom_clone/src/modules/security/helpers/security_text_key.dart';

class PinViewerBox extends GetView<SecurityController> {
  const PinViewerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Center(
          child: Image.asset(
            AssetsHelper.logoOrangeMoney,
            height: SizesHelper.height(58.0),
          ),
        ),
        const Separator(value: 10),
        TextComponent(
          textKey: "0700000000",
          useOverFlow: false,
          fontSize: SizesHelper.fontSize(20.0),
        ),
        const Separator(value: 5),
        TextComponent(
          textKey: SecurityTextKey.secretCode,
          useOverFlow: false,
          fontWeight: FontWeight.bold,
          fontSize: SizesHelper.fontSize(25.0),
        ),
        const Separator(value: 25),
        Obx(() {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (controller.onCharging.isTrue) ...[
                const AppSpin(),
                const Separator(value: 10.0),
              ] else ...[
                SizedBox(
                  width: SizesHelper.width(100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        4,
                        (index) => ExtendedContainer(
                              useAnimated: true,
                              animatedTimeInMilliseconds: 200,
                              shape: BoxShape.circle,
                              height: SizesHelper.height(15.0),
                              width: SizesHelper.height(15.0),
                              color: controller.currentPinLength.value > index ? ColorsHelper.orange : Colors.white,
                              border: Border.all(color: ColorsHelper.orange, width: SizesHelper.width(1.5)),
                            )),
                  ),
                ),
                const Separator(value: 10),
                TextComponent(
                  textKey: controller.errorMessage.value,
                  useOverFlow: false,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange.shade800,
                  fontSize: SizesHelper.fontSize(16.0),
                ),
              ]
            ],
          );
        })
      ],
    );
  }
}

