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
      print(response.body);
      return jsonDecode(response.body);
    } else {
      return {'reason': response.reasonPhrase, 'status': response.statusCode};
    }
  }

  @override
  Future<String> userImageAvatar() {
    // TODO: implement userImageAvatar
    throw UnimplementedError();
  }
}
