import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/home/components/part_header_bar.dart';
import 'package:om_custom_clone/src/modules/partner/components/bill_service.dart';
import 'package:om_custom_clone/src/modules/partner/components/service_section_viewer.dart';
import 'package:om_custom_clone/src/modules/partner/controllers/partner_controller.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class ServicePerCategoryViewerBox extends GetView<PartnerController> {
  const ServicePerCategoryViewerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: SizesHelper.height(15), ),
      child: Column(
        children:  [
          const BillService(),
          const Separator(value: 17),
          ServiceSectionViewer(services: controller.financialServices, sectionTitle: PartnerTextKey.financialSection,),
          const Separator(value: 17),
          ServiceSectionViewer(services: controller.othersPartners, sectionTitle: PartnerTextKey.otherSection,),
          const Separator(value: 17),
          ServiceSectionViewer(services: controller.merchants, sectionTitle: PartnerTextKey.merchantSection,),
        ],
      ),
    );
  }
}

