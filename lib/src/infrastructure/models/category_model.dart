abstract class CategoryModel {
  CategoryModel({
    required this.name,
    this.description,
    this.color,
    required this.materialIconCodePoint,
    // required this.columns,
  });

  String name;

  String? description;

  int? color;

  int materialIconCodePoint; // icon (char)

}
