import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/orange_service.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class OrangeServiceTile extends StatelessWidget {
  const OrangeServiceTile({
    Key? key, required this.orangeService, required this.index,
  }) : super(key: key);
final OrangeService orangeService;
final int index;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      child: MaterialInkWell(
        onPressed: (){},
        personalizeBorderRadius: index == 0? BorderRadius.vertical( top: Radius.circular(SizesHelper.radius(8))):BorderRadius.vertical( bottom: Radius.circular(SizesHelper.radius(8))),
        child: Padding(
          padding: EdgeInsets.only(top: SizesHelper.height(5), bottom:SizesHelper.height(5), left: SizesHelper.width(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ExtendedContainer(
                    height: SizesHelper.height(35),
                    width: SizesHelper.height(35),
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(orangeService.logoLink)),
                  ),
                  const Separator(value: 8, onVertical: false),
                  TextComponent(
                    textKey: orangeService.name,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios, size: SizesHelper.fontSize(16),))
            ],
          ),
        ),
      ),
    );
  }
}