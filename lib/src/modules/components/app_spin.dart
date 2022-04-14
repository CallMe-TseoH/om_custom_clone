import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';

class AppSpin extends StatelessWidget {
  const AppSpin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation(ColorsHelper.orange));
  }
}
