import 'package:intl/intl.dart';

extension DoubleDataToViewExtension on double? {
  //String symbol = '₽'
  String? formatNumber({String symbol = ''}) {
    double? value = this;

    if (value == null) return null;

    NumberFormat formatter = NumberFormat("#,##0.00", "en");

    String formattedValue = formatter.format(value);

    formattedValue = formattedValue.replaceAll(',', ' ');

    if (formattedValue.endsWith('.00')) {
      formattedValue = formattedValue.substring(0, formattedValue.length - 3);
    }

    formattedValue = formattedValue.replaceAll('.', ',');

    formattedValue = "$formattedValue $symbol";

    return formattedValue;
  }
}