import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/components/material_ink_well.dart';
import 'package:om_custom_clone/src/modules/components/separator.dart';
import 'package:om_custom_clone/src/modules/components/text_component.dart';
import 'package:om_custom_clone/src/modules/home/components/operation_service_button.dart';
import 'package:om_custom_clone/src/modules/home/controllers/home_controller.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class ServicesViewerBox extends GetView<HomeController> {
  const ServicesViewerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: SizesHelper.width(15)),
            child: const TextComponent(
              textKey: HomeTextKey.myService,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        const Separator(value: 5),
        ExtendedContainer(
          margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(5)),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(controller.operationServices.length, (index){
              final _service = controller.operationServices[index];
              return OperationServiceButton(operationService: _service,);
            }),
          ),
        )
      ],
    );
  }
}

