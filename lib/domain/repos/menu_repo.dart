import 'package:test_saham_rakyat/domain/entities/menu.dart';

abstract class MenuRepo {
  Future<List<Menu>> getMenus(String category);
}
