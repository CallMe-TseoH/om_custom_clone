import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/extended_partner.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class PartnerTileButton extends StatelessWidget {
  const PartnerTileButton({
    Key? key, required this.extendedPartner,
  }) : super(key: key);
final ExtendedPartner extendedPartner;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      child: MaterialInkWell(
        onPressed: (){},
        radius: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15), vertical: SizesHelper.height(10)),
          child: Row(
            children: [
              ExtendedContainer(
                height: SizesHelper.height(50),
                width: SizesHelper.height(50),
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(image: AssetImage(extendedPartner.logoLink)),
              ),
              const Separator(value: 10, onVertical: false,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     TextComponent(
                      textKey: extendedPartner.name,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ),
                    TextComponent(
                      textKey: extendedPartner.category,
                      fontSize: SizesHelper.fontSize(13),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
