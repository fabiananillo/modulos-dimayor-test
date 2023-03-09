import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:table_v2/model/shell_teams_model/shell_teams_model.dart';

class ShellTeamsRepository {
  Future<List<ShellTeamsModel>> fetchShell({required String rulesetName}) async {
    final response =
        await http.get(Uri.parse('https://appfutbolcolombiano.com/api/teams'));
    if (response.statusCode == 200) {
      Map<String, dynamic> dataMap = jsonDecode(response.body);

      List data = dataMap[rulesetName];

      List<ShellTeamsModel> shellTeamList = data
          .map<ShellTeamsModel>((shellTeam) => ShellTeamsModel(
              ulrIconShellTeam: shellTeam['shield'],
              idShield: shellTeam['id'],
              fullName: shellTeam['name']))
          .toList();

      return shellTeamList;
    } else {
      throw Exception('Failed to load tables');
    }
  }
}
