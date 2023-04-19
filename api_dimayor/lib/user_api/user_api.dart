import 'dart:convert';

import 'package:api_dimayor/api_dimayor.dart';
import 'package:http/http.dart' as http;

class UserApi extends ApiDimayorUser {
  @override
  Future<Map<String, dynamic>> uploadAvatar(
      {required String userToken, required String imageBase64}) async {
    final response = await http.post(
        Uri.parse(
            "https://dev.appfutbolcolombiano.com/upload-avatar/$userToken"),
        body: jsonEncode(<String, String>{'image': imageBase64}));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return {'reason': response.reasonPhrase, 'status': response.statusCode};
    }
  }
  //comentario prueba

  @override
  Future<List<Map<String, dynamic>>> phoneUser(
      {required Map<String, dynamic> phoneUserData}) async {
    final response = await http.post(
        Uri.parse("https://dev.appfutbolcolombiano.com/get-user-by-phone"),
        body: jsonEncode(phoneUserData));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      List listData = data['data']['Items'];
      List<Map<String, dynamic>> listItems =
          listData.map<Map<String, dynamic>>((item) => item).toList();
      return listItems;
    } else {
      return [
        {'reason': response.reasonPhrase, 'status': response.statusCode}
      ];
    }
  }
}
