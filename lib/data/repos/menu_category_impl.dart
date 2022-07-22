import 'package:test_saham_rakyat/data/models/menu_category/menu_category_model.dart';
import 'package:test_saham_rakyat/data/models/menu_category/menu_category_response.dart';
import 'package:test_saham_rakyat/data/services/services.dart';
import 'package:test_saham_rakyat/domain/entities/menu_category.dart';
import 'package:test_saham_rakyat/domain/repos/menu_category_repo.dart';

class MenuCategoryRepoImpl implements MenuCategoryRepo {
  final DioApi dioApi;

  MenuCategoryRepoImpl({required this.dioApi});

  @override
  Future<List<MenuCategory>> getMenuCategories() async {
    final result = MenuCategoryResponse.fromJson(
      (await dioApi.getApi(url: "/v1/1/list.php?c=list")).data,
    );

    return List<MenuCategoryModel>.from(result.meals)
        .map((model) => model.toEntity())
        .toList();
  }
}
