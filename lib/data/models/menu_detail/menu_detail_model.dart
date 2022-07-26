import 'package:test_saham_rakyat/domain/entities/ingridient.dart';
import 'package:test_saham_rakyat/domain/entities/menu_detail.dart';

class MenuDetailModel {
  String id;

  String name;

  String thumbnail;

  String? drinkAlternate;

  String category;

  String area;

  String instructions;

  String tags;

  String youtube;

  List<Ingridients> ingridients;

  MenuDetailModel({
    required this.id,
    required this.name,
    required this.thumbnail,
    this.drinkAlternate,
    required this.category,
    required this.area,
    required this.instructions,
    required this.tags,
    required this.youtube,
    required this.ingridients,
  });

  factory MenuDetailModel.fromJson(Map<String, dynamic> json) {
    List<Ingridients> ingridients = [];
    for (int i = 1; i <= 20; i++) {
      if (json['strIngredient$i'] != null &&
          json['strIngredient$i'].toString().isNotEmpty &&
          json['strMeasure$i'] != null &&
          json['strMeasure$i'].toString().isNotEmpty) {
        ingridients.add(
          Ingridients(
            ingridients: json['strIngredient$i'],
            measurement: json['strMeasure$i'],
          ),
        );
      }
    }

    return MenuDetailModel(
      id: json['idMeal'],
      name: json['strMeal'],
      thumbnail: json['strMealThumb'],
      drinkAlternate: json['strDrinkAlternate'],
      category: json['strCategory'],
      area: json['strArea'],
      instructions: json['strInstructions'],
      tags: json['strTags'],
      youtube: json['strYoutube'],
      ingridients: ingridients,
    );
  }

  MenuDetail toEntity() => MenuDetail(
        id: id,
        name: name,
        thumbnail: thumbnail,
        drinkAlternate: drinkAlternate,
        category: category,
        area: area,
        instructions: instructions,
        tags: tags,
        youtube: youtube,
        ingridients: ingridients,
      );
}
