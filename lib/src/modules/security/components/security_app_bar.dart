import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/security/helpers/security_text_key.dart';
import 'package:om_custom_clone/src/routes/route_model_interface.dart';

class SecurityAppBar extends StatelessWidget {
  const SecurityAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: TextComponent(
            textKey: SecurityTextKey.changeNumber,
            color: ColorsHelper.orange,
            useOverFlow: false,
            fontWeight: FontWeight.w700,
            fontSize: SizesHelper.fontSize(16.0),
          ),
        ),
        IconButton(
            onPressed: () {
              Get.toNamed(RMI.about.name);
            },
            icon: const Icon(
              Icons.info,
              color: Colors.black,
            ))
      ],
    );
  }
}
