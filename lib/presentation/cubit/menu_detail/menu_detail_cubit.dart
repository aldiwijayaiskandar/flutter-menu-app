import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_saham_rakyat/domain/entities/menu_detail.dart';
import 'package:test_saham_rakyat/domain/usecases/get_menu_detail_use_case.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu_detail/menu_detail_state.dart';

class MenuDetailCubit extends Cubit<MenuDetailCubitState> {
  final GetMenuDetailUseCase _getMenuDetailUseCase;

  MenuDetailCubit(this._getMenuDetailUseCase)
      : super(MenuDetailCubitState(detail: null));

  Future<void> fetchMenuDetail(String id) async {
    try {
      emit(MenuDetailLoading(detail: state.detail));

      MenuDetail response = await _getMenuDetailUseCase.execute(id);

      emit(MenuDetailLoaded(detail: response));
    } catch (err) {
      emit(MenuDetailError(detail: state.detail));
    }
  }
}
