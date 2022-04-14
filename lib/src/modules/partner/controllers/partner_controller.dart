import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/helpers/extension_helpers.dart';
import 'package:om_custom_clone/src/models/extended_partner.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';

class PartnerController extends GetxController{
  List<ExtendedPartner> billPartners = const [
    ExtendedPartner(name: HomeTextKey.orangeBill, logoLink: AssetsHelper.logoOrangeSimple, category: "Orange"),
    ExtendedPartner(name: "CIE", logoLink: AssetsHelper.logoCie, category: PartnerTextKey.electricityCategory),
    ExtendedPartner(name: "CANAL+", logoLink: AssetsHelper.logoCanal, category: "TV"),
    ExtendedPartner(name: "SODECI", logoLink: AssetsHelper.logoSodeci, category: PartnerTextKey.waterCategory),
    ExtendedPartner(name: "Pont HKB", logoLink: AssetsHelper.logoOrangeBank, category: PartnerTextKey.otherService),
    ExtendedPartner(name: "Startimes", logoLink: AssetsHelper.logoStartTime, category: "TV"),
    ExtendedPartner(name: HomeTextKey.bankAccess, logoLink: AssetsHelper.bankAccessIcon, category: PartnerTextKey.bankCategory),
    ExtendedPartner(name: PartnerTextKey.eduction, logoLink: AssetsHelper.scholarServiceIcon, category: PartnerTextKey.eductionCategory),

  ];
  List<ExtendedPartner> financialServices = const [
    ExtendedPartner(name: HomeTextKey.bankAccess, logoLink: AssetsHelper.bankAccessIcon, category: PartnerTextKey.bankCategory),
    ExtendedPartner(name: PartnerTextKey.visaCard, logoLink: AssetsHelper.orangeVisaIcon, category: PartnerTextKey.bankCategory),
    ExtendedPartner(name: PartnerTextKey.doShopping, logoLink: AssetsHelper.buyingIcon, category: PartnerTextKey.bankCategory),

  ];
  List<ExtendedPartner> othersPartners = const [
    ExtendedPartner(name: PartnerTextKey.cancelTransfer, logoLink: AssetsHelper.otherServiceIcon, category: PartnerTextKey.otherService),
    ExtendedPartner(name: PartnerTextKey.generateTempCode, logoLink: AssetsHelper.otherServiceIcon, category: PartnerTextKey.otherService),
    ExtendedPartner(name: "Ticket Event", logoLink: AssetsHelper.eventTicketLogo, category: PartnerTextKey.otherService),
  ];

  List<ExtendedPartner> merchants = const [
    ExtendedPartner(name: "Eden Roc", logoLink: AssetsHelper.merchantIcon, category: PartnerTextKey.restoCategory),
  ];
  //
  late Rx<PageController> billServicePageController;
  //
  RxDouble viewportFraction = .83.obs;
  //
  void __onInit(){
  }
  @override
  void onInit() {
    __onInit();
    super.onInit();
  }
  //
/*  @override
  void onReady() {

    super.onReady();
  }*/
  //
  void __onClose(){
  }

  @override
  void onClose() {
    __onClose();
    super.onClose();
  }
  //
  updateViewportFraction(int index){
    if(index == billPartners.chunkList().length-1){
      viewportFraction.value = 1.0;
    }else{
      viewportFraction.value =.83;
    }
  }
}