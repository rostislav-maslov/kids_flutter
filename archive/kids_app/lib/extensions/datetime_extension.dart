import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime{
  String _withPrefix(int day){
    if(day < 10){
      return '0$day';
    }
    return day.toString();
  }

  String toLocalDateString(){
    return '$year-${_withPrefix(month)}-${_withPrefix(day)}';
  }

  String toLocalTime(){
    DateFormat formatter = DateFormat.Hm();
    return formatter.format(this);
  }

  static String localDate(){
    DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(
        DateTime.now()
    );
  }
}