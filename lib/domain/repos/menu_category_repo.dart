import 'package:test_saham_rakyat/domain/entities/menu_category.dart';

abstract class MenuCategoryRepo {
  Future<List<MenuCategory>> getMenuCategories();
}
