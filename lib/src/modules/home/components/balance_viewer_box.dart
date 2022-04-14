import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/part_header_bar.dart';
import 'package:om_custom_clone/src/modules/home/components/show_balance_button.dart';
import 'package:om_custom_clone/src/modules/home/components/transaction_tile.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class BalanceViewerBox extends StatelessWidget {
  const BalanceViewerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      elevation: 1.5,
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(5)),
      padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(8), vertical: SizesHelper.height(15)),
      borderRadius: BorderRadius.circular(SizesHelper.radius(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const TextComponent(
            textKey: HomeTextKey.mainAccount,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.left,
          ),
          const ShowBalanceButton(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizesHelper.width(35)),
            child: const Divider(),
          ),
          const PartHeaderBar(title: HomeTextKey.lastTransaction,),
          const Separator(value: 5),
          const TransactionTile()
        ],
      ),
    );
  }
}


