import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/preferred_partner.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class PreferredPartnerButton extends StatelessWidget {
  const PreferredPartnerButton({
    Key? key, required this.preferredPartner,
  }) : super(key: key);
  final PreferredPartner preferredPartner;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      height: SizesHelper.height(90),
      width: SizesHelper.width(74.75),
      margin: EdgeInsets.only(right: SizesHelper.width(8)),
      child: MaterialInkWell(
        onPressed: (){

        },
        radius: 0,
        child: Column(
          children: [
            SizedBox(child: ClipOval(child: Image.asset(preferredPartner.logoLink)), height: SizesHelper.height(55),),
            const Separator(value: 5),
            TextComponent(textKey: preferredPartner.name, useOverFlow: false, fontSize: SizesHelper.fontSize(12), lineHeight: 1.15,)
          ],
        ),
      ),
    );
  }
}
