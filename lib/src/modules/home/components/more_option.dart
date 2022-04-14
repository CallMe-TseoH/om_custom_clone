import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/part_header_bar.dart';
import 'package:om_custom_clone/src/modules/home/components/preferred_partner_button.dart';
import 'package:om_custom_clone/src/modules/home/components/tips_column.dart';
import 'package:om_custom_clone/src/modules/home/controllers/home_controller.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class MoreOption extends GetView<HomeController> {
  const MoreOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      padding: EdgeInsets.only(right: SizesHelper.width(5), left: SizesHelper.width(5), top: SizesHelper.height(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const PartHeaderBar(title: HomeTextKey.preferredPartner),
          const Separator(value: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: controller.preferredPartners.map((preferredPartner) => PreferredPartnerButton(preferredPartner: preferredPartner)).toList(),
            ),
          ),
          const Separator(value: 15),
          const TipsColumn(),
          // const Separator(value: 50),

        ],
      ),
    );
  }
}

