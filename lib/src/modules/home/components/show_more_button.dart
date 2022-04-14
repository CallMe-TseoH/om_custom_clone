import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      borderRadius: BorderRadius.circular(SizesHelper.radius(5)),
      child: MaterialInkWell(
        onPressed: (){
        },
        radius: 5,
        child: Padding(
          padding: EdgeInsets.all(SizesHelper.height(8)),
          child: Row(
            children: [
              TextComponent(
                textKey: HomeTextKey.showMore,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.left,
                color: ColorsHelper.orange,
                fontSize: SizesHelper.fontSize(13),
              ),
              const Separator(value: 8, onVertical: false),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorsHelper.orange,
                size: SizesHelper.fontSize(13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
