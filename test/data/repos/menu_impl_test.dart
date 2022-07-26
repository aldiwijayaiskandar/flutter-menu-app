import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_saham_rakyat/data/models/menu/menu_model.dart';
import 'package:test_saham_rakyat/data/repos/menu_impl.dart';
import 'package:test_saham_rakyat/data/services/services.dart';
import 'package:test_saham_rakyat/domain/entities/menu.dart';

import '../../utils/dio_api_mock.dart';

void main() {
  final DioApi dioApi = MockDioApi();
  late MenuRepoImpl repo;

  setUp(() {
    repo = MenuRepoImpl(dioApi: dioApi);
  });

  List<Map<String, dynamic>> meals = [
    {
      'strMeal': 'Beef and Mustard Pie',
      'strMealThumb':
          'https:\/\/www.themealdb.com\/images\/media\/meals\/sytuqu1511553755.jpg',
      'idMeal': '52874'
    },
  ];

  Future<Response<Map<String, dynamic>>> menus = Future(
    () => Response(requestOptions: RequestOptions(path: ''), data: {
      "meals": meals,
    }),
  );

  List<Menu> expectedMenus = List<Map<String, dynamic>>.from(meals)
      .map((json) => MenuModel.fromJson(json).toEntity())
      .toList();

  test("Getting Menus", () async {
    when(() => dioApi.getApi(url: "/v1/1/filter.php?c=Beef"))
        .thenAnswer((_) => menus);

    // act
    final result = await repo.getMenus("Beef");

    for (int i = 0; i < result.length; i++) {
      expect(result[i].id, expectedMenus[i].id);
      expect(result[i].name, expectedMenus[i].name);
      expect(result[i].thumbnail, expectedMenus[i].thumbnail);
    }
  });
}
