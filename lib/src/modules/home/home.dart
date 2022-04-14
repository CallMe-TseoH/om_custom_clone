import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/page_structure.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/balance_viewer_box.dart';
import 'package:om_custom_clone/src/modules/home/components/more_option.dart';
import 'package:om_custom_clone/src/modules/home/components/orange_service_viewer_box.dart';
import 'package:om_custom_clone/src/modules/home/components/services_viewer_box.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageStructure(
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
        leadingWidth: SizesHelper.width(200),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Separator(
              value: 15,
              onVertical: false,
            ),
            TextComponent(
              textKey: HomeTextKey.home,
              fontWeight: FontWeight.bold,
              fontSize: SizesHelper.fontSize(22),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: SizesHelper.width(15)),
                child: const TextComponent(
                  textKey: HomeTextKey.hello,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const Separator(value: 5),
            const BalanceViewerBox(),
            const Separator(value: 15),
            const OrangeServiceViewerBox(),
            const Separator(value: 15),
            //
            const ServicesViewerBox(),
            const Separator(value: 5),
            const MoreOption(),

          ],
        ),
      ),
    );
  }

  Color get _backgroundColor => Colors.grey.shade200;
}


