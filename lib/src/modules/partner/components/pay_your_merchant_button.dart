import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class PayYourMerchantButton extends StatelessWidget {
  const PayYourMerchantButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      borderRadius: BorderRadius.circular(SizesHelper.radius(8)),
      color: Colors.white,
      elevation: 1.0,
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(8)),
      height: SizesHelper.height(80),
      child: MaterialInkWell(
        onPressed: (){},
        radius: 8,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(15), vertical: SizesHelper.height(10)),
          child: Row(
            children: [
              ExtendedContainer(
                color: ColorsHelper.orange,
                height: SizesHelper.height(45),
                width: SizesHelper.height(45),
                shape: BoxShape.circle,
              ),
              const Separator(value: 10, onVertical: false,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextComponent(
                      textKey: PartnerTextKey.payAMerchant,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.left,
                    ),
                    TextComponent(
                      textKey: PartnerTextKey.merchantQrCodeNumber,
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