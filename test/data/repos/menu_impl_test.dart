import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_saham_rakyat/data/models/menu/menu_model.dart';
import 'package:test_saham_rakyat/data/repos/menu_impl.dart';
import 'package:test_saham_rakyat/data/services/services.dart';
import 'package:test_saham_rakyat/domain/entities/menu.dart';

class MockDioApi extends Mock implements DioApi {}

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

    expect(result[0].id == expectedMenus[0].id, true);
    expect(result[0].name == expectedMenus[0].name, true);
    expect(result[0].thumbnail == expectedMenus[0].thumbnail, true);
  });
}
