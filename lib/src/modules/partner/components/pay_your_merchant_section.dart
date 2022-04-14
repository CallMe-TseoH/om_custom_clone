import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/partner/components/pay_your_merchant_button.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class PayYourMerchantSection extends StatelessWidget {
  const PayYourMerchantSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: SizesHelper.width(20)),
            child: const TextComponent(
              textKey: PartnerTextKey.payYourMerchant,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.left,
            ),
          ),
          const Separator(value: 5),
          const PayYourMerchantButton()
        ],
      ),
    );
  }
}

