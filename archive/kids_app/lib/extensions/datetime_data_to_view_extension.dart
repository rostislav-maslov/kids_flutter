extension DateTimeDataToViewExtension on DateTime? {
  String toDateFormat() {
    if (this == null) return '';
    return "${this!.year.toString().padLeft(4, '0')}.${this!.month.toString().padLeft(2, '0')}.${this!.day.toString().padLeft(2, '0')}";
  }

  String toDateTimeFormat() {
    if (this == null) return '';
    return "${this!.year.toString().padLeft(4, '0')}.${this!.month.toString().padLeft(2, '0')}.${this!.day.toString().padLeft(2, '0')} ${this!.hour.toString().padLeft(2, '0')}:${this!.minute.toString().padLeft(2, '0')}";
  }
}
