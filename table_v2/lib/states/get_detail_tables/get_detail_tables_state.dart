part of 'get_detail_tables_bloc.dart';

abstract class GetDetailTablesState {
  final List<List<RankingModel>> listRanking;
  const GetDetailTablesState({required this.listRanking});
}

class GetDetailTablesInitial extends GetDetailTablesState {
  const GetDetailTablesInitial({required super.listRanking});

}

class GetDetailTablesList extends GetDetailTablesState {
  const GetDetailTablesList({required super.listRanking});

}
