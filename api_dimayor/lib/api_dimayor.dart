library api_dimayor;

import 'package:http/http.dart';

import 'model/bottom_app_bar_menu/bottom_app_bar_menu_model.dart';

abstract class ApiDimayor {
  //bottomappbar endpoint
  Future<List<BottomAppBarModel>> bottomAppBarMenuApi();
  Future<Map<String, dynamic>> getEndpointBottomMenu();
  Future<List<BottomAppBarModel>> testBottomAppBarMenuApi();
}

abstract class ApiDimayorUser {
  //user endpoint
  //upload avatar
  Future<Map<String, dynamic>> uploadAvatar(
      {required String userToken, required String imageBase64});

  Future<String> userImageAvatar();
}
