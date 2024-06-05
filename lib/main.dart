import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitchen/app/modules/display_level_settings_New/controllers/websettingsv1_controller.dart';
import 'package:kitchen/app/modules/kitchen/controllers/kitchen_controller.dart';
import 'package:kitchen/app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final KitchenController counterController = Get.put(KitchenController());
  final Websettingsv1Controller c = Get.put(Websettingsv1Controller());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScreenUtilInit(
        designSize: Size(size.height, size.width),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: (BuildContext context, Widget? child) {
              final MediaQueryData data = MediaQuery.of(context);
              return MediaQuery(
                data: data.copyWith(textScaler: const TextScaler.linear(1)),
                child: child!,
              );
            },
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.system,
            title: 'Kitchen',
            initialRoute: AppPages.iNITIAL,
            getPages: AppPages.routes,
          );
        });
  }
}
