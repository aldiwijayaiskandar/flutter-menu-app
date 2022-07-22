import 'package:test_saham_rakyat/data/models/menu/menu_model.dart';
import 'package:test_saham_rakyat/data/models/menu/menu_response.dart';
import 'package:test_saham_rakyat/data/services/services.dart';
import 'package:test_saham_rakyat/domain/entities/menu.dart';
import 'package:test_saham_rakyat/domain/repos/menu_repo.dart';

class MenuRepoImpl extends MenuRepo {
  final DioApi dioApi;

  MenuRepoImpl({required this.dioApi});

  @override
  Future<List<Menu>> getMenus(String category) async {
    final result = MenuResponse.fromJson(
      (await dioApi.getApi(url: "/v1/1/filter.php?c=$category")).data,
    );

    return List<MenuModel>.from(result.meals)
        .map((model) => model.toEntity())
        .toList();
  }
}
