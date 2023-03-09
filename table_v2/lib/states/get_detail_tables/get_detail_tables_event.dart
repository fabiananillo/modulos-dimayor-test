part of 'get_detail_tables_bloc.dart';

abstract class GetDetailTablesEvent {
  const GetDetailTablesEvent();
}

class StageList extends GetDetailTablesEvent {
  final List<dynamic> stageList;
  final List<ShellTeamsModel> shieldList;

  const StageList({required this.stageList, required this.shieldList});
}


