import 'dart:convert';

class JsonErrorParser{
  static String getMessage(String json){
    if(jsonDecode(json)['errors'][0]['presentationData']['message'] == null){
      return 'Неисвестная ошибка';
    }

    return jsonDecode(json)['errors'][0]['presentationData']['message'];
  }

  static String getTitle(String json){
    if(jsonDecode(json)['errors'][0]['presentationData']['title'] == null){
      return 'Неисвестная ошибка';
    }

    return jsonDecode(json)['errors'][0]['presentationData']['title'];
  }
}