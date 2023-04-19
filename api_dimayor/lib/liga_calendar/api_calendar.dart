import 'dart:convert';

import '../api_dimayor.dart';
import 'package:http/http.dart' as http;

class ApiCalendar extends ApiDimayorCalendarTest {
  @override
  Future<List<Map<String, dynamic>>> getLigaCalendar() async {
    Uri endpoint =
        // Uri.parse('https://stg.appfutbolcolombiano.com/api/ligabyweekMiltux');
        Uri.parse(
            'https://proxy-opta.appfutbolcolombiano.com/soccerdata/match/1vz45c2xg0k5z1ibzh6hmf4c1p?_fmt=json&tmcl=4zd2xzft84vbrlhucybg5cwt0&_pgSz=200&live=yes&_ordSrt=asc');
    List<Map<String, dynamic>> listData =
        await http.get(endpoint).then((value) {
      if (value.statusCode == 200) {
        Map<String, dynamic> match = jsonDecode(value.body);
        List listResult = match['match'];
        return listResult.map<Map<String, dynamic>>((item) => item).toList();
      } else {
        return [
          {'error': value.reasonPhrase!}
        ];
      }
    });
    return listData;
  }

  @override
  Future<Map<String, dynamic>> getTeamShield() async {
    Uri endpoint = Uri.parse('https://dev.appfutbolcolombiano.com/teams');
    Map<String, dynamic> shields = await http.get(endpoint).then((value) {
      if (value.statusCode == 200) {
        Map<String, dynamic> match = jsonDecode(value.body);
        List listMaleData = match['data'];
        List listFemaleData = match['female'];
        List<Map<String, dynamic>> listResulMale =
            listMaleData.map<Map<String, dynamic>>((item) => item).toList();
        List<Map<String, dynamic>> listResulFemale =
            listFemaleData.map<Map<String, dynamic>>((item) => item).toList();
        Map<String, dynamic> resultShields = {
          'female': listResulFemale,
          'male': listResulMale
        };
        return resultShields;
      } else {
        return {'error': value.reasonPhrase!};
      }
    });
    return shields;
  }
}
