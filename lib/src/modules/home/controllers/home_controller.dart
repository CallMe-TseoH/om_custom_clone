import 'package:get/get.dart';
import 'package:om_custom_clone/src/helpers/assets_helper.dart';
import 'package:om_custom_clone/src/models/app_tip.dart';
import 'package:om_custom_clone/src/models/operation_service.dart';
import 'package:om_custom_clone/src/models/preferred_partner.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';

class HomeController extends GetxController {
  List<OperationService> operationServices = const [
    OperationService(
      name: HomeTextKey.recharge,
      illustrationLink: AssetsHelper.rechargeIcon,
    ),
    OperationService(
      name: HomeTextKey.moneyTransfer,
      illustrationLink: AssetsHelper.transferIcon,
    ),
    OperationService(
      name: HomeTextKey.buyPass,
      illustrationLink: AssetsHelper.buyPassIcon,
    ),
  ];
  
  List<PreferredPartner> preferredPartners = const [
    PreferredPartner(name: HomeTextKey.payAMerchant, logoLink: AssetsHelper.payAMerchantIcon),
    PreferredPartner(name: HomeTextKey.ocalmTransfer, logoLink: AssetsHelper.ocalmTransferIcon),
    PreferredPartner(name: HomeTextKey.bankAccess, logoLink: AssetsHelper.bankAccessIcon),
    PreferredPartner(name: HomeTextKey.orangeBill, logoLink: AssetsHelper.logoOrangeSimple),
    PreferredPartner(name: "CIE", logoLink: AssetsHelper.logoCie),
    PreferredPartner(name: "CANAL+", logoLink: AssetsHelper.logoCanal),
    PreferredPartner(name: "SODECI", logoLink: AssetsHelper.logoSodeci),
    PreferredPartner(name: HomeTextKey.orangeEnergy, logoLink: AssetsHelper.logoOrangeEnergy),
    PreferredPartner(name: "Pont HKB", logoLink: AssetsHelper.logoOrangeBank),
    PreferredPartner(name: "Startimes", logoLink: AssetsHelper.logoStartTime),
    PreferredPartner(name: "Ticket Event", logoLink: AssetsHelper.eventTicketLogo),
    PreferredPartner(name: HomeTextKey.orangeTv, logoLink: AssetsHelper.logoOrangeTv),
  ];

  List<AppTip> tips = const [
    AppTip(description: HomeTextKey.tipOneDescription, actionTitle: HomeTextKey.tipOneActionTitle, imageLink: AssetsHelper.orangeMoneyShareApp),
    AppTip(description: HomeTextKey.tipTwoDescription, actionTitle: HomeTextKey.tipTwoActionTitle, imageLink: AssetsHelper.orangeMoneyQrCOde),
  ];

  //
  RxBool showCurrentBalance = false.obs;
}
