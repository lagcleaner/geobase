abstract class FieldValueEntity {
  FieldValueEntity({
    required this.value,
  });

  dynamic value;

  FieldValueEntity copyWithValue(dynamic value);
}
