import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/colors_helper.dart';
import 'package:om_custom_clone/src/helpers/sizes_helper.dart';
import 'package:om_custom_clone/src/modules/about/pages/about_page.dart';
import 'package:om_custom_clone/src/modules/app_navigator/controllers/app_navigator_controller.dart';
import 'package:om_custom_clone/src/modules/app_navigator/helpers/app_navigator_text_key.dart';
import 'package:om_custom_clone/src/modules/home/home.dart';
import 'package:om_custom_clone/src/modules/my_account/my_account.dart';
import 'package:om_custom_clone/src/modules/partner/partner.dart';

class AppNavigator extends GetView<AppNavigatorController> {
  static const routeName = "/appNavigator";

  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Home(),
          Partner(),
          AboutPage(),
        ],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: ColorsHelper.orange,
          unselectedItemColor: Colors.black,
          elevation: 4,
          currentIndex: controller.currentIndex.value,
          onTap: (index){
            controller.updateCurrentIndex(index);
          },
          items: [
            BottomNavigationBarItem(icon: buildSvgPicture(AssetsHelper.homeIconSvg, 0), label: AppNavigatorTextKey.home.tr,),
            BottomNavigationBarItem(icon: buildSvgPicture(AssetsHelper.omSmallLogoSvg, 1), label: AppNavigatorTextKey.partner.tr),
            BottomNavigationBarItem(icon: buildSvgPicture(AssetsHelper.accountIconSvg, 2), label: AppNavigatorTextKey.account.tr),
          ],);
      }),
    );
  }

  SvgPicture buildSvgPicture(String path, int index) => SvgPicture.asset(path, height: SizesHelper.height(38), color: controller.currentIndex.value == index? ColorsHelper.orange:Colors.black,);
}
