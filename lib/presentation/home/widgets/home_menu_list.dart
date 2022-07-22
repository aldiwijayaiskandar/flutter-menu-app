import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu/menu_cubit.dart';
import 'package:test_saham_rakyat/presentation/cubit/menu/menu_state.dart';

class HomeMenuList extends StatelessWidget {
  const HomeMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuCubitState>(
      builder: (_, state) {
        return GridView.builder(
          primary: false,
          physics:
              const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,
          padding: const EdgeInsets.only(
            top: 10,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (_, index) => Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  child: Image.network(
                    state.menus[index].thumbnail,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(state.menus[index].name),
                    ],
                  ),
                )
              ],
            ),
          ),
          itemCount: state.menus.length,
        );
      },
    );
  }
}
