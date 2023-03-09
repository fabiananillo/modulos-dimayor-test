import 'dart:convert';

import 'package:table_v2/model/table_detail/table_detail_model.dart';
import 'package:http/http.dart' as http;

class TablesDetailRepository {
  Future<TableDetailModel> fetchTables({required String host, required String legend}) async {
    // Uri urlData = Uri.https('appfutbolcolombiano.com', '/api/standingsJSON',
    //     {'type': type});

    Uri urlData = Uri.parse(host);

    final response = await http.get(urlData).then((value) => value);
    if (response.statusCode == 200) {
      Map<String, dynamic> dataMap = jsonDecode(response.body);
      dataMap.putIfAbsent('legend', () => legend);
      return TableDetailModel.fromJson(dataMap);
    } else {
      print(response.statusCode);
      throw Exception('Failed to load tables');
    }
  }
}
