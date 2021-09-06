class FilterOptions {
  final String? strValue;

  FilterOptions({
    this.strValue,
  });

  factory FilterOptions.clean() => FilterOptions();

  FilterOptions copyWith({
    String? strValue,
  }) {
    return FilterOptions(
      strValue: strValue ?? this.strValue,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FilterOptions && other.strValue == strValue;
  }

  @override
  int get hashCode => strValue.hashCode;

  @override
  String toString() => 'FilterOptions(strValue: $strValue)';
}
