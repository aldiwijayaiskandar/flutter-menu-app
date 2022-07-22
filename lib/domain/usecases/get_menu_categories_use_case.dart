import 'package:test_saham_rakyat/domain/entities/menu_category.dart';
import 'package:test_saham_rakyat/domain/repos/menu_category_repo.dart';

class GetMenuCategoriesUseCase {
  final MenuCategoryRepo _menuCategoryRepo;

  GetMenuCategoriesUseCase(this._menuCategoryRepo);

  Future<List<MenuCategory>> execute() => _menuCategoryRepo.getMenuCategories();
}
