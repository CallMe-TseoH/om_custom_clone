import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:om_custom_clone/src/modules/about/helpers/about_text_key.dart';
import 'package:om_custom_clone/src/modules/app_navigator/helpers/app_navigator_text_key.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';
import 'package:om_custom_clone/src/modules/security/helpers/security_text_key.dart';


Map<String, String> get enUS =>{
 SecurityTextKey.changeNumber: "Change Number".toUpperCase(),
 SecurityTextKey.secretCode: "Enter your secret code",
 SecurityTextKey.validate: "Validate".toUpperCase(),
 SecurityTextKey.invalidCode: "Incorrect code",
 //
 AppNavigatorTextKey.home: "Home",
 AppNavigatorTextKey.partner: "Our partners",
 AppNavigatorTextKey.account: "My account",
 //
 HomeTextKey.home: "Home",
 HomeTextKey.hello: "Hello,",
 HomeTextKey.mainAccount: "Main account",
 HomeTextKey.showBalance: "View balance".toUpperCase(),
 HomeTextKey.lastTransaction: "Last transaction",
 HomeTextKey.showMore: "See more".toUpperCase(),
 HomeTextKey.moneyWithdrawal: "Withdrawal money",
 HomeTextKey.myService: "My Services",
 HomeTextKey.recharge: "Reload\ncredit",
 HomeTextKey.moneyTransfer: "Transfer\nmoney",
 HomeTextKey.buyPass: "Buy a\nPass",
 //
 HomeTextKey.preferredPartner: "Preferred Partners",
 HomeTextKey.payAMerchant: "Pay a merchant",
 HomeTextKey.ocalmTransfer: "Transfer O'Calm",
 HomeTextKey.bankAccess: "Access to my Bank",
 HomeTextKey.orangeBill: "Orange Bills",
 HomeTextKey.orangeEnergy: "Orange Energy",
 HomeTextKey.orangeTv: "TV Orange",
 //
 HomeTextKey.tip: "Tips",
 HomeTextKey.tipOneActionTitle: "Share".toUpperCase(),
 HomeTextKey.tipOneDescription: "Share the Orange money app with your loved ones",
 HomeTextKey.tipTwoActionTitle: "Scan".toUpperCase(),
 HomeTextKey.tipTwoDescription: "Scan a QR Code related to an Orange Money service",
 //
 PartnerTextKey.appBarTitle: "Our partners",
 PartnerTextKey.payYourMerchant: "Pay your merchant",
 PartnerTextKey.payAMerchant: "Pay a merchant",
 PartnerTextKey.merchantQrCodeNumber: "Merchant number or QR code",
 PartnerTextKey.billSection: "Pay your bills",
 PartnerTextKey.financialSection: "Financial services",
 PartnerTextKey.otherSection: "Other services",
 PartnerTextKey.merchantSection: "Merchant",
 //
 PartnerTextKey.visaCard: "OBA Visa Card",
 PartnerTextKey.bankCategory: "Bank",
 PartnerTextKey.restoCategory: "Restaurant",
 PartnerTextKey.waterCategory: "Water",
 PartnerTextKey.electricityCategory: "Electricity".capitalize!,
 PartnerTextKey.otherService: "Other services",
 PartnerTextKey.cancelTransfer: "Cancel a money transfer",
 PartnerTextKey.generateTempCode: "Generate a temporary code",
 PartnerTextKey.doShopping: "Make my purchases",
 PartnerTextKey.eductionCategory: "Tuition fees",
 PartnerTextKey.eduction: "National Education",
 //
 AboutTextKey.projectDescription:
 "The application is a customized clone of the proprietary application - Orange Money Africa - of the company Orange. This clone is an educational implementation. You can find the original application on the AppStores or on the Orange Pages. Orange Money allows you to make all your transactions with ease.",
 };