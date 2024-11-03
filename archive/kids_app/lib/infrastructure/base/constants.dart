import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Constants {
  static Future<void>  init() async {
    await dotenv.load(fileName: "assets/.env");
    controlAppUrl = dotenv.env['CONTROL_APP_URL'] ?? "";
  }

  static late String controlAppUrl;

}