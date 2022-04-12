import 'package:om_custom_clone/src/helpers/classes/willko_route.dart';
import 'package:om_custom_clone/src/modules/home/bindings/home_binding.dart';
import 'package:om_custom_clone/src/modules/home/home.dart';
import 'package:om_custom_clone/src/modules/security/bindings/security_binding.dart';
import 'package:om_custom_clone/src/modules/security/secutity.dart';


class RMI{
  RMI._();
  static  WillkoRoute get security => WillkoRoute(name: Security.routeName, page: const Security(), binding: SecurityBinding(), index: 0);
  static  WillkoRoute get home => WillkoRoute(name: Home.routeName, page: const Home(), binding: HomeBinding(), index: 1);
}