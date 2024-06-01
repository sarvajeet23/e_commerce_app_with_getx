import 'package:e_commerce_app_with_getx/controllers/home/HomeController.dart';
import 'package:e_commerce_app_with_getx/providers/CategoryProvider.dart';
import 'package:e_commerce_app_with_getx/providers/OfferProvider.dart';
import 'package:e_commerce_app_with_getx/providers/ProductProvider.dart';
import 'package:e_commerce_app_with_getx/repositories/CategoryRepository.dart';
import 'package:e_commerce_app_with_getx/repositories/OfferRepository.dart';
import 'package:e_commerce_app_with_getx/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferRepository>(() => OfferRepository(Get.find()));
    Get.lazyPut<OfferProvider>(() => OfferProvider(Get.find()));

    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
    Get.lazyPut<CategoryProvider>(() => CategoryProvider(Get.find()));

    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));

    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
