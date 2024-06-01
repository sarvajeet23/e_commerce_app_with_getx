import 'package:e_commerce_app_with_getx/controllers/home/HomeBinding.dart';
import 'package:e_commerce_app_with_getx/controllers/products/ProductBinding.dart';
import 'package:e_commerce_app_with_getx/views/authentication/LoginPage.dart';
import 'package:e_commerce_app_with_getx/views/authentication/SplashPage.dart';
import 'package:e_commerce_app_with_getx/views/home/HomePage.dart';
import 'package:e_commerce_app_with_getx/views/product/ProductPage.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/splash',
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/product/:id',
      page: () => ProductPage(),
      binding: ProductBinding(),
    )
  ];
}
