import 'package:e_commerce_app_with_getx/controllers/products/ProductController.dart';
import 'package:e_commerce_app_with_getx/providers/ProductProvider.dart';
import 'package:e_commerce_app_with_getx/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));

    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}
