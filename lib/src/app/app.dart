import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:om_custom_clone/src/app/bindings/app_binding.dart';
import 'package:om_custom_clone/src/routes/app_routes.dart';
import 'package:om_custom_clone/src/routes/route_model_interface.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(896, 414),
      minTextAdapt: true,
      builder:  ()=> GetMaterialApp(
        title: "Orange Money Custom Clone",
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        // translations: AppLocalisation(),
         localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate
        ],
        locale: const Locale('fr', 'FR'),
        supportedLocales: const [
          Locale('fr', "FR"),
          Locale('en', "US"),
        ],
        fallbackLocale: const Locale('en', 'US'),
        defaultTransition: Transition.cupertino,
        opaqueRoute: Get.isOpaqueRouteDefault,
        popGesture: Get.isPopGestureEnable,
        transitionDuration: const Duration(milliseconds: 250),
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        getPages: AppRoutes.getAppRoutes,
        initialBinding: AppBinding(),
        initialRoute: RMI.security.name,
      ),
    );
  }
}
