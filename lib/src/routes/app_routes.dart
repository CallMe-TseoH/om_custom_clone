
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:om_custom_clone/src/routes/route_model_interface.dart';

class AppRoutes{
  AppRoutes._();
  static List<GetPage> get getAppRoutes{
    return <GetPage>[
      GetPage(name: RMI.navigator.name, page: ()=>RMI.navigator.page, binding:RMI.navigator.binding),
      GetPage(name: RMI.security.name, page: ()=>RMI.security.page, binding:RMI.security.binding),
      GetPage(name: RMI.home.name, page: ()=>RMI.home.page, binding:RMI.home.binding),
      GetPage(name: RMI.account.name, page: ()=>RMI.account.page, binding:RMI.account.binding),
      GetPage(name: RMI.about.name, page: ()=>RMI.about.page, binding:RMI.about.binding),
    ];
  }
}