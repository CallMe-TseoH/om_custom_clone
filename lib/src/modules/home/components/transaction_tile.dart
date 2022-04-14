import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      padding: EdgeInsets.only(right: SizesHelper.width(5), top: SizesHelper.height(5), bottom: SizesHelper.height(5)),
      borderRadius: BorderRadius.circular(5),
      child: Row(
        children: [
          ExtendedContainer(
            height: SizesHelper.height(50),
            width: SizesHelper.height(50),
            shape: BoxShape.circle,
            color: Colors.deepPurpleAccent,
            image: const DecorationImage(
              image: AssetImage(AssetsHelper.withdrawalIcon),
            ),
          ),
          const Separator(value: 10, onVertical: false),
          Expanded(child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  TextComponent(textKey: "Boutique 2250101010101",         fontWeight: FontWeight.bold,
                    textAlign: TextAlign.left,fontSize: SizesHelper.fontSize(13.5)),
                  TextComponent(textKey: "- 5 000 F CFA",         fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,fontSize: SizesHelper.fontSize(13.5)),
                ],
              ),
              const Separator(value: 2.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextComponent(textKey: HomeTextKey.moneyWithdrawal,
                    textAlign: TextAlign.left,  fontSize: SizesHelper.fontSize(13.0)),
                  TextComponent(textKey: "11:22",
                    textAlign: TextAlign.right,  fontSize: SizesHelper.fontSize(13.0)),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
