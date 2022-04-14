import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      elevation: 2,
      borderRadius: BorderRadius.circular(SizesHelper.radius(12)),
      margin: EdgeInsets.all(SizesHelper.height(8)),
      child: MaterialInkWell(
        onPressed: (){

        },
        radius: 12,
        splashColor: ColorsHelper.orange,
        child: Column(

          mainAxisSize: MainAxisSize.min,
          children: [
            const Separator(value: 40),
            CircleAvatar(radius: SizesHelper.height(60),
              backgroundColor: ColorsHelper.orange,
              backgroundImage: const AssetImage(AssetsHelper.kevinPhoto),

            ),
            const Separator(value: 15),
            TextComponent(textKey: "Kevin's Assi", fontWeight: FontWeight.bold, fontSize: SizesHelper.height(35),),
            const Separator(value: 5),
            TextComponent(textKey: "- Flutter Software Engineer -", fontWeight: FontWeight.normal, fontSize: SizesHelper.height(18),),
            const Separator(value: 5),
            TextComponent(textKey: "Those of the perfectionist and good architecture", fontWeight: FontWeight.normal, fontSize: SizesHelper.height(12),),
            const Separator(value: 15),

          ],
        ),
      ),
    );
  }
}
