class TimeEntity {
  const TimeEntity({
    required this.hour,
    required this.minute,
  });

  final int hour;

  final int minute;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TimeEntity && other.hour == hour && other.minute == minute;
  }

  @override
  int get hashCode => hour.hashCode ^ minute.hashCode;

  @override
  String toString() => toVisualString();

  String toVisualString() {
    String getStringWithLeftZerosIfNeeded(int value) {
      if (value < 10) {
        return '0$value';
      }
      return value.toString();
    }

    final periodOffset = hour < 12 ? 0 : 12;
    final hourOfPeriod = hour == 0 || hour == 12 ? 12 : hour - periodOffset;

    return '${getStringWithLeftZerosIfNeeded(hourOfPeriod % 12)}:${getStringWithLeftZerosIfNeeded(minute)} ${hour >= 12 ? 'pm' : 'am'}';
  }
}
