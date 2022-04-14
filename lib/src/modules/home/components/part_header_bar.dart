import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/show_more_button.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class PartHeaderBar extends StatelessWidget {
  const PartHeaderBar({
    Key? key, required this.title,
  }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextComponent(
          textKey: title,
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.left,
        ),
        const ShowMoreButton(),
      ],
    );
  }
}
