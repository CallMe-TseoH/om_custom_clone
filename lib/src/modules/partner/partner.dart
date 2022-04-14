import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/page_structure.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/part_header_bar.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';
import 'package:om_custom_clone/src/modules/partner/components/pay_your_merchant_section.dart';
import 'package:om_custom_clone/src/modules/partner/components/service_per_category_viewer_box.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class Partner extends StatelessWidget {
  static const routeName = "/partner";
  const Partner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageStructure(
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              height: SizesHelper.height(18),
              child: Image.asset(AssetsHelper.logoOrangeMoney, fit: BoxFit.fitWidth),
            ),
            const Separator(value: 8, onVertical: false),
            TextComponent(
              textKey: PartnerTextKey.appBarTitle,
              fontWeight: FontWeight.bold,
              fontSize: SizesHelper.fontSize(22),
              useOverFlow: false,
              textAlign: TextAlign.left,
            ),
          ],
        ),
        centerTitle: false,
      ),
        body: ListView(
          padding: EdgeInsets.zero,
      children: const [
        PayYourMerchantSection(),
        Separator(value: 10),
        ServicePerCategoryViewerBox()
      ],
    ));
  }
  Color get _backgroundColor => Colors.grey.shade200;

}


