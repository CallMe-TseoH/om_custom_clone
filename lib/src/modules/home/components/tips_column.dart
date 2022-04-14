import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/tip_card_button.dart';
import 'package:om_custom_clone/src/modules/home/controllers/home_controller.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class TipsColumn extends GetView<HomeController> {
  const TipsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: TextComponent(
            textKey: HomeTextKey.tip,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.left,
          ),
        ),
        const Separator(value: 8),
        for(var _tip in controller.tips)
        TipCardButton(tip: _tip,),
      ],
    );
  }
}


