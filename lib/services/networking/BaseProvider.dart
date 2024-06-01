import 'package:e_commerce_app_with_getx/services/networking/ApiConstants.dart';
import 'package:e_commerce_app_with_getx/services/networking/interceptors/RequestInterceptor.dart';
import 'package:e_commerce_app_with_getx/services/networking/interceptors/ResponseInterceptor.dart';
import 'package:get/get_connect.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
