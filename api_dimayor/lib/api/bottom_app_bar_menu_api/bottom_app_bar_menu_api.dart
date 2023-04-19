import 'dart:convert';

import 'package:api_dimayor/api_dimayor.dart';
import 'package:api_dimayor/model/bottom_app_bar_menu/bottom_app_bar_menu_model.dart';
import 'package:http/http.dart' as http;

class BottomAppBarMenu extends ApiDimayor {
  @override
  Future<List<BottomAppBarModel>> bottomAppBarMenuApi() async {
    return await getEndpointBottomMenu().then((menu) {
      //return await getEndpointBottomMenu().then((menu) {
      List data = menu['data'];
      List<BottomAppBarModel> listMenu = data
          .map<BottomAppBarModel>(
              (menuData) => BottomAppBarModel.fromJson(menuData))
          .toList();
      return listMenu;
    });
  }

  @override
  Future<Map<String, dynamic>> getEndpointBottomMenu() async {
    Uri endpoint = Uri.parse('https://appfutbolcolombiano.com/api/footerTabs');
    return await http.get(endpoint).then((value) {
      if (value.statusCode == 200) {
        return jsonDecode(value.body);
      } else {
        return {'error': value.reasonPhrase!};
      }
    });
  }

  @override
  Future<List<BottomAppBarModel>> testBottomAppBarMenuApi() async {
    return await Future.delayed(const Duration(milliseconds: 500))
        .then((value) => <BottomAppBarModel>[
              const BottomAppBarModel(
                  show: 1,
                  type: "native",
                  url: "https://dev.appfutbolcolombiano.com",
                  label: "Calendarios",
                  logo:
                      "https://cmsdimayor.s3.amazonaws.com/appdimayorLogos/footerTabs/calendar.png",
                  id: "0"),
              const BottomAppBarModel(
                  show: 1,
                  type: "native",
                  url:
                      "https://stg.appfutbolcolombiano.com/api/tabsTableDetails",
                  label: "Tablas",
                  logo:
                      "https://cmsdimayor.s3.amazonaws.com/appdimayorLogos/footerTabs/tables.png",
                  id: "1"),
              const BottomAppBarModel(
                  show: 1,
                  type: "native",
                  url: "https://dev.appfutbolcolombiano.com/news/destacadas",
                  label: "Noticias",
                  logo:
                      "https://cmsdimayor.s3.amazonaws.com/appdimayorLogos/footerTabs/news.png",
                  id: "2"),
              //hide tab collection for test
              const BottomAppBarModel(
                  show: 0,
                  type: "webview",
                  url: "https://dimayor.golball.com/",
                  label: "Colección",
                  logo:
                      "https://cmsdimayor.s3.amazonaws.com/appdimayorLogos/footerTabs/collections.png",
                  id: "3"),
            ])
        .catchError((error) {
      print(error.toString());
    });
  }
}
