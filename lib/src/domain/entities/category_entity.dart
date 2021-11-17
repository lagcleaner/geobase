abstract class CategoryEntity {
  CategoryEntity({
    required this.name,
    this.description,
    this.color,
    this.icon,
  });

  String name;

  String? description;

  int? color;

  int? icon; // icon (char)

}
