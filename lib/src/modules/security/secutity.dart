import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/security/components/numeric_pad.dart';
import 'package:om_custom_clone/src/modules/security/components/pin_viewer_box.dart';
import 'package:om_custom_clone/src/modules/security/components/security_app_bar.dart';
import 'package:om_custom_clone/src/modules/security/components/validate_button.dart';
import 'package:om_custom_clone/src/modules/security/controller/security_controller.dart';

class Security extends GetView<SecurityController> {
  static const routeName = "/security";

  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SecurityAppBar(),
            const PinViewerBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                NumericPad(),
                Separator(value: 10 ),
                ValidateButton()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

