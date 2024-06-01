import 'package:e_commerce_app_with_getx/services/networking/ApiService.dart';
import 'package:e_commerce_app_with_getx/services/networking/BaseProvider.dart';
import 'package:get/instance_manager.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BaseProvider(), permanent: true);
    Get.put(ApiService(Get.find()), permanent: true);
  }
}
