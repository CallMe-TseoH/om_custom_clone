import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/operation_service.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';

class OperationServiceButton extends StatelessWidget {
  const OperationServiceButton({
    Key? key, required this.operationService,
  }) : super(key: key);

  final OperationService operationService;
  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      elevation: 1.0,
      height: SizesHelper.height(155),
      width: SizesHelper.width((Get.width / 3.15)),
      borderRadius: BorderRadius.circular(SizesHelper.radius(8)),
      child: MaterialInkWell(
        onPressed: (){

        },
        radius: 8,
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: SizesHelper.height(4.5)),
          child: Column(
            children: [
              ExtendedContainer(
                  height: SizesHelper.height(100),
                  width: SizesHelper.height(100),
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(operationService.illustrationLink)),
                 ),
              TextComponent(textKey: operationService.name, useOverFlow: false,),
            ],
          ),
        ),
      ),
    );
  }
}
