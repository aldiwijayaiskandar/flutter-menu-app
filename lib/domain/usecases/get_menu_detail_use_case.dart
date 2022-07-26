import 'package:test_saham_rakyat/domain/entities/menu_detail.dart';
import 'package:test_saham_rakyat/domain/repos/menu_repo.dart';

class GetMenuDetailUseCase {
  final MenuRepo _menuRepo;

  GetMenuDetailUseCase(this._menuRepo);

  Future<MenuDetail> execute(int id) => _menuRepo.getMenu(id);
}
