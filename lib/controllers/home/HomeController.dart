import 'package:carousel_slider/carousel_controller.dart';
import 'package:e_commerce_app_with_getx/models/categories/CategoryModel.dart';
import 'package:e_commerce_app_with_getx/models/offers/OfferModel.dart';
import 'package:e_commerce_app_with_getx/models/products/ProductModel.dart';
import 'package:e_commerce_app_with_getx/providers/CategoryProvider.dart';
import 'package:e_commerce_app_with_getx/providers/OfferProvider.dart';
import 'package:e_commerce_app_with_getx/providers/ProductProvider.dart';
import 'package:e_commerce_app_with_getx/views/home/tabs/CardTab.dart';
import 'package:e_commerce_app_with_getx/views/home/tabs/ExploreTab.dart';
import 'package:e_commerce_app_with_getx/views/home/tabs/FavoriteTab.dart';
import 'package:e_commerce_app_with_getx/views/home/tabs/UserTab.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final OfferProvider _offerProvider;
  HomeController(this._offerProvider);

  late PageController pageController;
  late CarouselController carouselController;
  late CategoryProvider _categoryProvider = Get.find();
  late ProductProvider _productProvider = Get.find();

  var currentPage = 0.obs;
  var currentBanner = 0.obs;
  var activeOffers = <OfferModel>[].obs;
  var categories = <CategoryModel>[].obs;
  var discountedProducts = <ProductModel>[].obs;

  List<Widget> pages = [
    ExploreTab(),
    FavoriteTab(),
    CardTab(),
    UserTab(),
  ];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    carouselController = CarouselController();

    getOffers();
    getCategories();
    getDiscountedProducts();
    super.onInit();
  }

  void getOffers() {
    _offerProvider.getOffers().then((offers) {
      activeOffers.value = offers;
    });
  }

  void getCategories() {
    _categoryProvider.getCategories().then((categories) {
      this.categories.value = categories;
    });
  }

  void getDiscountedProducts() {
    _productProvider.getDiscountedProducts().then((products) {
      discountedProducts(products);
      print(products);
    });
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void changeBanner(int index) {
    currentBanner.value = index;
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }
}
