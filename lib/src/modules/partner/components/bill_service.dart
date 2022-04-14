import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/extension_helpers.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/extended_partner.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/part_header_bar.dart';
import 'package:om_custom_clone/src/modules/partner/components/partner_tile_button.dart';
import 'package:om_custom_clone/src/modules/partner/controllers/partner_controller.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class BillService extends GetView<PartnerController> {
  const BillService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15)),
          child: const PartHeaderBar(title: PartnerTextKey.billSection),
        ),
        ExtendedContainer(
          height: SizesHelper.height(210),
          width: double.infinity,
          child: Obx(() {
            return PageView(
              pageSnapping: true,
              padEnds: false,
              controller: PageController(viewportFraction: controller.viewportFraction.value),
              onPageChanged: (int index){
                controller.updateViewportFraction(index);
              },
              children: List.generate(_subBillPartners.length, (index) {
                final _billPartners = _subBillPartners[index];
                if (index != 0 && index == _subBillPartners.length - 1) {
                  return ExtendedContainer(
                    color: Colors.white,
                    child: Column(
                      children: _billPartners.map((e) => PartnerTileButton(extendedPartner: e)).toList(),
                    ),
                  );
                }
                return ExtendedContainer(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Column(
                          children: _billPartners.map((e) => PartnerTileButton(extendedPartner: e)).toList(),
                        ),
                      ),
                      ExtendedContainer(
                        height: SizesHelper.height(10),
                        width: SizesHelper.width(1),
                        color: Colors.grey.shade200,
                      )
                    ],
                  ),
                );
              }),
            );
          }),
        )
      ],
    );
  }

  List<List<ExtendedPartner>> get _subBillPartners => controller.billPartners.chunkList();
}
