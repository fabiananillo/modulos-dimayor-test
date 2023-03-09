library table_v2;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_v2/states/get_detail_tables/get_detail_tables_bloc.dart';
import 'package:table_v2/states/get_endpoint_tables/get_endpoint_tables_bloc.dart';
import 'package:table_v2/states/getdata/get_data_bloc.dart';
import 'package:table_v2/widget/tables/tables_widget.dart';

import 'model/shell_teams_model/shell_teams_model.dart';
import 'model/table/table_model.dart';

class TableData extends StatelessWidget {
  final List<TableModel> listTable;
  final List<ShellTeamsModel> listShieldsWomen, listShieldsMen;
  final List endpointList;

  const TableData(
      {Key? key,
      required this.listTable,
      required this.listShieldsWomen,
      required this.endpointList,
      required this.listShieldsMen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<GetDataBloc>(
          create: (context) => GetDataBloc(
              listTables: listTable,
              listShieldsWomen: listShieldsWomen,
              listShieldsMen: listShieldsMen)),
      BlocProvider<GetDetailTablesBloc>(
          create: (context) => GetDetailTablesBloc()),
      BlocProvider<GetEndpointTablesBloc>(
          create: (context) => GetEndpointTablesBloc(endpointList)),
    ], child: const TablesWidget());
  }
}
