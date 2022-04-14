import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: TextComponent(
            textKey: title,
            color: ColorsHelper.orange,
            useOverFlow: false,
            fontWeight: FontWeight.w700,
            fontSize: SizesHelper.fontSize(16.0),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info,
              color: Colors.black,
            ))
      ],
    );
  }
}
