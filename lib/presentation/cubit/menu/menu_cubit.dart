import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_saham_rakyat/domain/entities/menu.dart';
import 'package:test_saham_rakyat/domain/usecases/get_menu_use_case.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu/menu_state.dart';

class MenuCubit extends Cubit<MenuCubitState> {
  final GetMenuUseCase _getMenuUseCase;

  MenuCubit(this._getMenuUseCase) : super(MenuCubitState(menus: []));

  Future<void> fetchMenu(String category) async {
    try {
      emit(MenuLoading(menus: state.menus));

      List<Menu> response = await _getMenuUseCase.execute(category);

      emit(MenuLoaded(menus: response));
    } catch (err) {
      emit(MenuError(menus: state.menus));
    }
  }
}
