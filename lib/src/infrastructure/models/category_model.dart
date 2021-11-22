abstract class CategoryModel {
  CategoryModel({
    required this.name,
    required this.description,
    required this.color,
    required this.icon,
    // required this.columns,
  });

  String name;

  String? description;

  int? color;

  String icon; // icon (name)

}
