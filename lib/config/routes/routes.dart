import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_saham_rakyat/data/repos/menu_category_impl.dart';
import 'package:test_saham_rakyat/data/repos/menu_impl.dart';
import 'package:test_saham_rakyat/data/services/services.dart';
import 'package:test_saham_rakyat/domain/usecases/get_menu_categories_use_case.dart';
import 'package:test_saham_rakyat/domain/usecases/get_menu_use_case.dart';

import 'package:test_saham_rakyat/presentation/cubit/menu/menu_cubit.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu_category/menu_category_cubit.dart';
import 'package:test_saham_rakyat/presentation/home/home_page.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _materialRoute(
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => MenuCategoryCubit(
                  GetMenuCategoriesUseCase(
                    MenuCategoryRepoImpl(
                      dioApi: DioApi(),
                    ),
                  ),
                ),
              ),
              BlocProvider(
                create: (_) => MenuCubit(
                  GetMenuUseCase(
                    MenuRepoImpl(
                      dioApi: DioApi(),
                    ),
                  ),
                ),
              ),
            ],
            child: const HomePage(),
          ),
        );
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
