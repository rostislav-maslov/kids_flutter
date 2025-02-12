class TimeZone {
  final String countryCode;
  final String tzIdentifier;
  final String utcOffset;
  final String stdOffset;
  final String dstOffset;
  final String cityName;

  TimeZone({
    required this.countryCode,
    required this.tzIdentifier,
    required this.utcOffset,
    required this.stdOffset,
    required this.dstOffset,
    required this.cityName,
  });

  bool matchesQuery(String query) {
    return cityName.contains(query);
  }
}

List<TimeZone> timeZones = [
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Kaliningrad',
    utcOffset: '+02:00',
    stdOffset: '+02:00',
    dstOffset: '+02:00',
    cityName: 'Калининград',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Kirov',
    utcOffset: '+03:00',
    stdOffset: '+03:00',
    dstOffset: '+03:00',
    cityName: 'Киров',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Moscow',
    utcOffset: '+03:00',
    stdOffset: '+03:00',
    dstOffset: '+03:00',
    cityName: 'Москва',
  ),
  TimeZone(
    countryCode: 'RU, UA',
    tzIdentifier: 'Europe/Simferopol',
    utcOffset: '+03:00',
    stdOffset: '+03:00',
    dstOffset: '+03:00',
    cityName: 'Симферополь',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Volgograd',
    utcOffset: '+03:00',
    stdOffset: '+03:00',
    dstOffset: '+03:00',
    cityName: 'Волгоград',
  ),
  TimeZone(
    countryCode: 'AE',
    tzIdentifier: 'Asia/Dubai',
    cityName: 'Dubai',
    utcOffset: '+04:00',
    stdOffset: '+04:00',
    dstOffset: '+04:00',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Astrakhan',
    utcOffset: '+04:00',
    stdOffset: '+04:00',
    dstOffset: '+04:00',
    cityName: 'Астрахань',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Samara',
    utcOffset: '+04:00',
    stdOffset: '+04:00',
    dstOffset: '+04:00',
    cityName: 'Самара',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Saratov',
    utcOffset: '+04:00',
    stdOffset: '+04:00',
    dstOffset: '+04:00',
    cityName: 'Саратов',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Europe/Ulyanovsk',
    utcOffset: '+04:00',
    stdOffset: '+04:00',
    dstOffset: '+04:00',
    cityName: 'Ульяновск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Yekaterinburg',
    utcOffset: '+05:00',
    stdOffset: '+05:00',
    dstOffset: '+05:00',
    cityName: 'Екатеринбург',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Omsk',
    utcOffset: '+06:00',
    stdOffset: '+06:00',
    dstOffset: '+06:00',
    cityName: 'Омск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Barnaul',
    utcOffset: '+07:00',
    stdOffset: '+07:00',
    dstOffset: '+07:00',
    cityName: 'Барнаул',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Krasnoyarsk',
    utcOffset: '+07:00',
    stdOffset: '+07:00',
    dstOffset: '+07:00',
    cityName: 'Красноярск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Novokuznetsk',
    utcOffset: '+07:00',
    stdOffset: '+07:00',
    dstOffset: '+07:00',
    cityName: 'Новокузнецк',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Novosibirsk',
    utcOffset: '+07:00',
    stdOffset: '+07:00',
    dstOffset: '+07:00',
    cityName: 'Новосибирск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Tomsk',
    utcOffset: '+07:00',
    stdOffset: '+07:00',
    dstOffset: '+07:00',
    cityName: 'Томск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Irkutsk',
    utcOffset: '+08:00',
    stdOffset: '+08:00',
    dstOffset: '+08:00',
    cityName: 'Иркутск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Chita',
    utcOffset: '+09:00',
    stdOffset: '+09:00',
    dstOffset: '+09:00',
    cityName: 'Чита',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Khandyga',
    utcOffset: '+09:00',
    stdOffset: '+09:00',
    dstOffset: '+09:00',
    cityName: 'Хандыга',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Yakutsk',
    utcOffset: '+09:00',
    stdOffset: '+09:00',
    dstOffset: '+09:00',
    cityName: 'Якутск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Ust-Nera',
    utcOffset: '+10:00',
    stdOffset: '+10:00',
    dstOffset: '+10:00',
    cityName: 'Усть-Нера',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Vladivostok',
    utcOffset: '+10:00',
    stdOffset: '+10:00',
    dstOffset: '+10:00',
    cityName: 'Владивосток',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Magadan',
    utcOffset: '+11:00',
    stdOffset: '+11:00',
    dstOffset: '+11:00',
    cityName: 'Магадан',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Sakhalin',
    utcOffset: '+11:00',
    stdOffset: '+11:00',
    dstOffset: '+11:00',
    cityName: 'Южно-Сахалинск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Srednekolymsk',
    utcOffset: '+11:00',
    stdOffset: '+11:00',
    dstOffset: '+11:00',
    cityName: 'Среднеколымск',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Anadyr',
    utcOffset: '+12:00',
    stdOffset: '+12:00',
    dstOffset: '+12:00',
    cityName: 'Анадырь',
  ),
  TimeZone(
    countryCode: 'RU',
    tzIdentifier: 'Asia/Kamchatka',
    utcOffset: '+12:00',
    stdOffset: '+12:00',
    dstOffset: '+12:00',
    cityName: 'Петропавловск-Камчатский',
  ),
];
