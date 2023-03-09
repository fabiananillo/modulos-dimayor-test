import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:table_v2/model/shell_teams_model/shell_teams_model.dart';
import 'package:table_v2/repository/tables_repository.dart';

import '../../model/table/table_model.dart';
import '../../repository/shell_teams_repository.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState>
    with TablesRepository, ShellTeamsRepository {
  final List<TableModel> listTables;
  final List<ShellTeamsModel> listShieldsWomen, listShieldsMen;

  GetDataBloc(
      {required this.listTables,
      required this.listShieldsWomen,
      required this.listShieldsMen})
      : super(GetDataInitial(
            listTables: listTables,
            listShieldsWomen: listShieldsWomen,
            listShieldsMen: listShieldsMen)) {
    on<GetTablesEvent>((event, emit) async {
      if (listTables.isEmpty) {
        List<ShellTeamsModel> listShieldMen =
            await fetchShell(rulesetName: 'data').then((value) => value);
        List<ShellTeamsModel> listShieldWomen =
            await fetchShell(rulesetName: 'female').then((value) => value);
        await fetchTables().then((tableList) {
          emit(GetDataTables(
              listTables: tableList,
              listShieldsMen: listShieldMen,
              listShieldsWomen: listShieldWomen));
        }).catchError((error) {
          print(error.toString());
        });
      } else {
        emit(GetDataTables(
            listTables: listTables,
            listShieldsMen: listShieldsMen,
            listShieldsWomen: listShieldsWomen));
      }
    });
  }
}
