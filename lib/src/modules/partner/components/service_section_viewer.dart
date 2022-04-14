import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/extended_partner.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/home/components/part_header_bar.dart';
import 'package:om_custom_clone/src/modules/partner/components/partner_tile_button.dart';
import 'package:om_custom_clone/src/modules/partner/controllers/partner_controller.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class ServiceSectionViewer extends StatelessWidget {
  const ServiceSectionViewer( {Key? key, required this.sectionTitle, required this.services,}) : super(key: key);
final String sectionTitle;
final List<ExtendedPartner> services;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15)),
          child:  PartHeaderBar(title: sectionTitle),
        ),
    ExtendedContainer(
    width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(right: SizesHelper.width(80)),
      child: Column(children: services.map((e) => PartnerTileButton(extendedPartner: e)).toList(),),
    )
      ],
    );
  }
}
