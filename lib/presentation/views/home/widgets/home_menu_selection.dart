import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu_category/menu_category_cubit.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu_category/menu_category_state.dart';

// ignore: must_be_immutable
class HomeMenuSelection extends StatelessWidget {
  String? selectedMenuCategories;
  void Function(String? value) onChanged;
  HomeMenuSelection({
    Key? key,
    required this.selectedMenuCategories,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCategoryCubit, MenuCategoryCubitState>(
      builder: (_, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          width: double.infinity,
          child: DropdownButtonHideUnderline(
            key: const Key("Dropdown"),
            child: DropdownButton(
              value: selectedMenuCategories,
              items: state.categories
                  .map(
                    (item) => DropdownMenuItem(
                      value: item.category,
                      child: Text(item.category),
                    ),
                  )
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        );
      },
    );
  }
}
