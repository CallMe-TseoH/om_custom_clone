import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/app_tip.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class TipCardButton extends StatelessWidget {
  const TipCardButton({
    Key? key, required this.tip,
  }) : super(key: key);
final AppTip tip;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      elevation: 1.5,
      height: SizesHelper.height(130),
      borderRadius: BorderRadius.circular(SizesHelper.radius(8)),
      margin: EdgeInsets.only(bottom: SizesHelper.height(10)),
      child: MaterialInkWell(
        onPressed: (){},
        radius: 8,
        child: Row(
          children: [
            SizedBox(
              child: ClipRRect(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(SizesHelper.radius(8))),
                  child: Image.asset(
                    tip.imageLink,
                    fit: BoxFit.cover,
                  )),
              width: SizesHelper.width(90),
              height: double.infinity,
            ),
            const Separator(
              value: 15,
              onVertical: false,
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: SizesHelper.height(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: TextComponent(
                            textKey: tip.description,
                            useOverFlow: false,
                            textAlign: TextAlign.left,
                          )),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: TextComponent(
                            textKey: tip.actionTitle,
                            color: ColorsHelper.orange,
                            fontWeight: FontWeight.w800,
                            textAlign: TextAlign.left,
                            fontSize: SizesHelper.fontSize(12),
                          )),
                    ],
                  ),
                )),
            const Separator(
              value: 15,
              onVertical: false,
            ),
          ],
        ),
      ),
    );
  }
}