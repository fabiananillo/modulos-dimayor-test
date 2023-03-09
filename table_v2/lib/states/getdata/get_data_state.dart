part of 'get_data_bloc.dart';

abstract class GetDataState extends Equatable {
  final List<TableModel> listTables;
  final List<ShellTeamsModel> listShieldsMen;
  final List<ShellTeamsModel> listShieldsWomen;

  const GetDataState({required this.listTables, required this.listShieldsMen, required this.listShieldsWomen});
}

class GetDataInitial extends GetDataState {
  const



  GetDataInitial({required super.listTables, required super.listShieldsMen, required super.listShieldsWomen});@override
  List<Object> get props => [listTables, listShieldsMen, listShieldsWomen];
}

class GetDataTables extends GetDataState {
  const


  GetDataTables({required super.listTables, required super.listShieldsMen, required super.listShieldsWomen});@override
  List<Object> get props => [listTables, listShieldsMen, listShieldsWomen];
}
