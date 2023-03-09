import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:table_v2/config/endpoint_config.dart';
import 'package:table_v2/model/table/table_model.dart';

class TablesRepository{

  final EndPointConfig endPointConfig = EndPointConfig();

  Future<List<TableModel>> fetchTables() async {
    // Uri urlTables =
    //     Uri.https('appfutbolcolombiano.com', '/api/tabsTableDetails');

    Uri urlTables =
        Uri.parse(endPointConfig.tabledetails);

    final response = await http.get(urlTables);
    if (response.statusCode == 200) {
      Map<String, dynamic> dataMap = jsonDecode(response.body);
      List data = dataMap['data'];
      List<TableModel> listDataTable =
          data.map<TableModel>((e) => TableModel.fromJson(e)).toList();
      listDataTable.add(const TableModel(
          label: 'Label',
          title: 'Test BetPlay',
          legend: 'Charly is a legend',
          logo:
              'https://cmsdimayor.s3.amazonaws.com/appdimayorLogos/torneo.png',
          type: 'native',
          url: 'test url',
          show: 0));
      listDataTable.removeWhere((element) => element.show == 0);
      return listDataTable;
    } else {
      throw Exception('Failed to load tables');
    }
  }
}
