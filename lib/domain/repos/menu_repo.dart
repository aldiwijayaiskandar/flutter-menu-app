import 'package:test_saham_rakyat/domain/entities/menu.dart';
import 'package:test_saham_rakyat/domain/entities/menu_detail.dart';

abstract class MenuRepo {
  Future<List<Menu>> getMenus(String category);

  Future<MenuDetail> getMenu(int id);
}
