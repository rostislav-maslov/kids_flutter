import 'package:intl/intl.dart';
import 'package:kids_app/infrastructure/base/time_zone.dart';

extension StringParser on String {
  int? toInt() {
    if (this == '') return null;

    return int.parse(this);
  }

  double? toDouble() {
    if (this == '') return null;

    return double.parse(this);
  }
}

extension StringDateTimeFormatting on String? {
  String formatDateTime() {
    try {
      if (this == null) {
        return '';
      }

      final dateTime = DateTime.parse(this!);
      final dateFormat = DateFormat('yyyy.MM.dd HH:mm');

      final formattedDateTime = dateFormat.format(dateTime);

      return formattedDateTime;
    } catch (e) {
      return 'Invalid Date';
    }
  }

  String formatDate() {
    try {
      if (this == null) {
        return '';
      }

      final dateTime = DateTime.parse(this!);
      final dateFormat = DateFormat('yyyy.MM.dd');

      final formattedDateTime = dateFormat.format(dateTime);

      return formattedDateTime;
    } catch (e) {
      return '';
    }
  }

  String? formatToCityTimeZone() {
    if (this == null) {
      return this ?? '';
    }

    try {
      TimeZone? foundTimeZone =
          timeZones.firstWhere((e) => e.tzIdentifier == this);
      return '${foundTimeZone.cityName} (${foundTimeZone.stdOffset})';
    } catch (e) {
      return this;
    }
  }
}

extension StringValidation on String? {
  String? validateNotEmpty() {
    if (this == null || this!.isEmpty) {
      return '* Обязательное поле.';
    }
    return null;
  }

  String? validateNumber() {
    if (this == null || this!.isEmpty) {
      return '* Обязательное поле.';
    }
    int? value = int.tryParse(this!);
    if (value == null) {
      return '* Значение должно быть числом.';
    }
    return null;
  }

  String? validateLatitude() {
    if (this == null || this!.isEmpty) {
      return '* Обязательное поле.';
    }
    double? value = double.tryParse(this!);
    if (value == null) {
      return '* Поле должно быть числом.';
    }
    if (value < -90 || value > 90) {
      return '* Широта должна быть в диапазоне от -90 до 90.';
    }
    return null;
  }

  String? validateLongitude() {
    if (this == null || this!.isEmpty) {
      return '* Обязательное поле.';
    }
    double? value = double.tryParse(this!);
    if (value == null) {
      return '* Поле должно быть числом.';
    }
    if (value < -180 || value > 180) {
      return '* Долгота должна быть в диапазоне от -180 до 180.';
    }
    return null;
  }

  String firstCharacterWithAStub() {
    if (this == null || this!.isEmpty) {
      return ' ';
    }
    return this![0].toUpperCase();
  }
}
