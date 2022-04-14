import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:om_custom_clone/src/modules/about/helpers/about_text_key.dart';
import 'package:om_custom_clone/src/modules/app_navigator/helpers/app_navigator_text_key.dart';
import 'package:om_custom_clone/src/modules/home/helpers/home_text_key.dart';
import 'package:om_custom_clone/src/modules/partner/helpers/partner_text_key.dart';
import 'package:om_custom_clone/src/modules/security/helpers/security_text_key.dart';

Map<String, String> get frFR => {
      SecurityTextKey.changeNumber: "Changer de Numéro".toUpperCase(),
      SecurityTextKey.secretCode: "Entrez votre code secret",
      SecurityTextKey.validate: "Valider".toUpperCase(),
      SecurityTextKey.invalidCode: "Code incorrect",
      //
      AppNavigatorTextKey.home: "Accueil",
      AppNavigatorTextKey.partner: "Nos partenaires",
      AppNavigatorTextKey.account: "Mon compte",
      //
      HomeTextKey.home: "Accueil",
      HomeTextKey.hello: "Bonjour,",
      HomeTextKey.mainAccount: "Compte principal",
      HomeTextKey.showBalance: "Afficher le solde".toUpperCase(),
      HomeTextKey.lastTransaction: "Dernière transaction",
      HomeTextKey.showMore: "Voir plus".toUpperCase(),
      HomeTextKey.moneyWithdrawal: "Retrait d'argent",
      HomeTextKey.myService: "Mes Services",
      HomeTextKey.recharge: "Recharger\ndu crédit",
      HomeTextKey.moneyTransfer: "Transférer\nde l'argent",
      HomeTextKey.buyPass: "Acheter un\nPass",
      //
      HomeTextKey.preferredPartner: "Partenaires Préférés",
      HomeTextKey.payAMerchant: "Payer un marchand",
      HomeTextKey.ocalmTransfer: "Transfert O'Calm",
      HomeTextKey.bankAccess: "Accès à ma banque",
      HomeTextKey.orangeBill: "Factures Orange",
      HomeTextKey.orangeEnergy: "Orange Energie",
      HomeTextKey.orangeTv: "TV Orange",
      //
      HomeTextKey.tip: "Astuces",
      HomeTextKey.tipOneActionTitle: "Partager".toUpperCase(),
      HomeTextKey.tipOneDescription: "Partager l'application Orange money avec vos proches",
      HomeTextKey.tipTwoActionTitle: "Scanner".toUpperCase(),
      HomeTextKey.tipTwoDescription: "Scanner un QR Code en lien avec un service Orange Money",
      //
      PartnerTextKey.appBarTitle: "Nos partenaires",
      PartnerTextKey.payYourMerchant: "Payer votre marchand",
      PartnerTextKey.payAMerchant: "Payer un marchand",
      PartnerTextKey.merchantQrCodeNumber: "Numéro marchandou QR code",
      PartnerTextKey.billSection: "Payer vos factures",
      PartnerTextKey.financialSection: "Services financiers",
      PartnerTextKey.otherSection: "Autres services",
      PartnerTextKey.merchantSection: "Marchands",
      //
      PartnerTextKey.visaCard: "Carte Visa OBA",
      PartnerTextKey.bankCategory: "Banque",
      PartnerTextKey.restoCategory: "Restaurant",
      PartnerTextKey.waterCategory: "Eau",
      PartnerTextKey.electricityCategory: "électricité".capitalize!,
      PartnerTextKey.otherService: "Autres services",
      PartnerTextKey.cancelTransfer: "Annuler un transfert d'argent",
      PartnerTextKey.generateTempCode: "Générer un code temporaire",
      PartnerTextKey.doShopping: "Faire mes achats",
      PartnerTextKey.eductionCategory: "Frais scolarité",
      PartnerTextKey.eduction: "Education Nationale",
      //
      AboutTextKey.projectDescription:
          "L'application-ci est un clone customisé de l'application propriétaire - Orange Money Africa - de la société Orange. "
              "Ce clone est une implémentation à titre éducatif. Vous pourrez trouver l'application originale sur les AppStores ou sur les Pages Orange."
              "\"Orange Money permet d'effectuer toutes vos transactions en toute simplicité.\"",
    };
