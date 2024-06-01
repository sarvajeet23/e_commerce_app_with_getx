import 'package:e_commerce_app_with_getx/models/categories/CategoryModel.dart';
import 'package:e_commerce_app_with_getx/repositories/CategoryRepository.dart';

class CategoryProvider {
  final CategoryRepository _categoryRepository;

  CategoryProvider(this._categoryRepository);

  Future<List<CategoryModel>> getCategories() async {
    var categories = await _categoryRepository.getCategories();

    return categories.map((category) => CategoryModel.fromJson(category)).toList();
  }
}
