import 'package:flutter/material.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/models/orange_service.dart';
import 'package:om_custom_clone/src/modules/components/extended_container.dart';
import 'package:om_custom_clone/src/modules/home/components/orange_service_tile.dart';

const _list = [
  OrangeService(name: "Orange Bank", logoLink: AssetsHelper.logoOrangeBank),
  OrangeService(name: "Espace O'Calm", logoLink: AssetsHelper.logoOcalm),
];

class OrangeServiceViewerBox extends StatelessWidget {
  const OrangeServiceViewerBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedContainer(
      color: Colors.white,
      elevation: 1.5,
      margin: EdgeInsets.symmetric(horizontal: SizesHelper.width(5)),
      borderRadius: BorderRadius.circular(SizesHelper.radius(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OrangeServiceTile(orangeService: _list.first, index:0),
          Padding(
            padding: EdgeInsets.only(left: SizesHelper.width(50), right: SizesHelper.width(20)),
            child: ExtendedContainer(width: double.infinity, color: Colors.grey.shade300, height: 1,),
          ),
          OrangeServiceTile(orangeService: _list.last,index:1),
        ],
      ),
    );
  }
}


