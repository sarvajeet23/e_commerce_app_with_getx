import 'package:e_commerce_app_with_getx/AppBinding.dart';
import 'package:e_commerce_app_with_getx/controllers/theme/ThemesController.dart';
import 'package:e_commerce_app_with_getx/routes/routes.dart';
import 'package:e_commerce_app_with_getx/themes/Themes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();

  runApp(App());
}

class App extends StatelessWidget {
  final ThemesController themeController = Get.put(ThemesController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter e-commerce app',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: getThemeMode(themeController.theme),
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
      initialBinding: AppBinding(),
    );
  }

  ThemeMode getThemeMode(String type) {
    ThemeMode themeMode = ThemeMode.system;
    switch (type) {
      case "system":
        themeMode = ThemeMode.system;
        break;
      case "dark":
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.light;
        break;
    }

    return themeMode;
  }
}
