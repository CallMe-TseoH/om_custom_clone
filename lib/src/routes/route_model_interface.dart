import 'package:om_custom_clone/src/helpers/classes/willko_route.dart';
import 'package:om_custom_clone/src/modules/about/about_me.dart';
import 'package:om_custom_clone/src/modules/about/bindings/about_binding.dart';
import 'package:om_custom_clone/src/modules/app_navigator/app_navigator.dart';
import 'package:om_custom_clone/src/modules/app_navigator/bindings/app_navigator_binding.dart';
import 'package:om_custom_clone/src/modules/home/bindings/home_binding.dart';
import 'package:om_custom_clone/src/modules/home/home.dart';
import 'package:om_custom_clone/src/modules/my_account/bindings/my_account_binding.dart';
import 'package:om_custom_clone/src/modules/my_account/my_account.dart';
import 'package:om_custom_clone/src/modules/security/bindings/security_binding.dart';
import 'package:om_custom_clone/src/modules/security/secutity.dart';


class RMI{
  RMI._();
  static  WillkoRoute get navigator => WillkoRoute(name: AppNavigator.routeName, page: const AppNavigator(), binding: AppNavigatorBinding(), index: 0);
  static  WillkoRoute get security => WillkoRoute(name: Security.routeName, page: const Security(), binding: SecurityBinding(), index: 1);
  static  WillkoRoute get home => WillkoRoute(name: Home.routeName, page: const Home(), binding: HomeBinding(), index: 2);
  static  WillkoRoute get account => WillkoRoute(name: MyAccount.routeName, page: const MyAccount(), binding: MyAccountBinding(), index: 3);
  static  WillkoRoute get about => WillkoRoute(name: AboutMe.routeName, page: const AboutMe(), binding: AboutBinding(), index: 3);
}