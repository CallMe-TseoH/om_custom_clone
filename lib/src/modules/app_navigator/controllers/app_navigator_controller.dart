import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppNavigatorController extends GetxController{
  late PageController pageController;
  //
  RxInt currentIndex = 0.obs;
  //
  void __onInit(){
    pageController =PageController();
  }
  @override
  void onInit() {
    __onInit();
    super.onInit();
  }
  //
  void __onClose(){
    pageController.dispose();
  }
  @override
  void onClose() {
    __onClose();
    super.onClose();
  }
  //
  void updateCurrentIndex(int index){
    if(index != currentIndex.value){
      currentIndex.value = index;
      pageController.animateToPage(index, duration: const Duration(milliseconds: 150), curve: Curves.fastOutSlowIn,);
    }
  }
}