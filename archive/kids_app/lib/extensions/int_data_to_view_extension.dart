import 'package:intl/intl.dart';

extension IntDataToViewExtension on int? {
//String symbol = '₽'
  String? formatNumber({String symbol = ''}) {
    int? value = this;

    if (value == null) return null;

    NumberFormat formatter = NumberFormat("#,##0", "en");

    String formattedValue = formatter.format(value);

    formattedValue = formattedValue.replaceAll(',', ' ');

    formattedValue = "$formattedValue $symbol";

    return formattedValue;
  }
}