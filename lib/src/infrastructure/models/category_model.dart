abstract class CategoryModel {
  CategoryModel({
    required this.name,
    this.description,
    this.color,
    this.materialIconCodePoint,
    // required this.columns,
  });

  String name;

  String? description;

  String? color;

  int? materialIconCodePoint; // icon (char)

}
