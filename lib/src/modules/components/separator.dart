import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';

class Separator extends StatelessWidget {
  const Separator({
    Key? key, required this.value, this.onVertical = true, this.useAnimated = false,
  }) : super(key: key);
  final double value;
  final bool onVertical;
  final bool useAnimated;
  @override
  Widget build(BuildContext context) {
    if(onVertical) {
      if(useAnimated){
        return ExtendedContainer(useAnimated: true, animatedTimeInMilliseconds: 200, height: SizesHelper.height(value),);
      }else{
        return SizedBox(height: SizesHelper.height(value));
      }
    } else {
      if(useAnimated){
return ExtendedContainer(useAnimated: true, animatedTimeInMilliseconds: 200, width: SizesHelper.width(value),);
      }else{
        return SizedBox(width: SizesHelper.width(value));
      }
    }

  }
}
