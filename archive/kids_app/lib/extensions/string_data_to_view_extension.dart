import 'package:intl/intl.dart';

extension StringDataToViewExtension on String{
  String _withPrefix(int day){
    if(day < 10){
      return '0$day';
    }
    return day.toString();
  }

  String convertDataToView(){
    var date = DateTime.parse(this);
    return '${date.year}.${_withPrefix(date.month)}.${_withPrefix(date.day)} ${_withPrefix(date.hour)}:${_withPrefix(date.minute)}';
  }

  String formatDateGMTToLocal(String? timeZone) {
    if (this == '') {
      return '';
    }

    DateTime? dateTimeParse = DateTime.tryParse(this);

    if(dateTimeParse == null){
      return '';
    }

    DateTime dateTime = DateTime.utc(
        dateTimeParse.year,
        dateTimeParse.month,
        dateTimeParse.day,
        dateTimeParse.hour,
        dateTimeParse.minute,
        dateTimeParse.second
    );

    if (timeZone == "GMT" || timeZone == "UTC") {
      dateTime = dateTime.toLocal();
    }

    return DateFormat('yyyy.MM.dd').format(dateTime);
  }

  String formatPhone(){
    return replaceAllMapped(
      RegExp(r'(\d{1})(\d{3})(\d{3})(\d{2})(\d{2})'),
          (final Match m) => '+${m[1]} (${m[2]}) ${m[3]} ${m[4]}-${m[5]}',
    );
  }
}