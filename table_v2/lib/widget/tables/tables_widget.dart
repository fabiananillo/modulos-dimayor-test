import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_v2/model/shell_teams_model/shell_teams_model.dart';
import 'package:table_v2/model/table/table_model.dart';
import 'package:table_v2/model/table_detail/table_detail_model.dart';
import 'package:table_v2/repository/tables_detail_repository.dart';
import 'package:table_v2/states/get_endpoint_tables/get_endpoint_tables_bloc.dart';
import 'package:table_v2/widget/loaders/app_loader.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../states/getdata/get_data_bloc.dart';
import '../table_detail/table_detail_widget.dart';

class TablesWidget extends StatefulWidget {
  const TablesWidget({Key? key}) : super(key: key);

  @override
  State<TablesWidget> createState() => _TablesWidgetState();
}

class _TablesWidgetState extends State<TablesWidget>
    with TablesDetailRepository, TickerProviderStateMixin {
  String data = '';

  @override
  void initState() {
    if (context.read<GetDataBloc>().listTables.isEmpty) {
      context.read<GetDataBloc>().add(const GetTablesEvent());
    } else {}

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDataBloc, GetDataState>(
      builder: (context, state) {
        if (state.listTables.isEmpty) {
          return const Center(
            child: AppLoader(),
          );
        } else {
          List<TableModel> listTables = state.listTables;
          List<ShellTeamsModel> listShieldMen = state.listShieldsMen;
          List<ShellTeamsModel> listShieldWomen = state.listShieldsWomen;
          context
              .read<GetEndpointTablesBloc>()
              .add(GetTableDataEvent(listTables));
          return DefaultTabController(
              length: state.listTables.length,
              child: Column(
                children: [
                  TabBar(
                      isScrollable: true,
                      indicatorColor: const Color(0xff191c2c),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                      indicator: const BoxDecoration(color: Color(0xff191c2c)),
                      tabs: listTables
                          .map<Tab>((table) => Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CachedNetworkImage(
                                      width: 30,
                                      height: 30.0,
                                      imageUrl: table.logo,
                                      placeholder: (context, url) =>
                                          const SizedBox(
                                              height: 30,
                                              width: 30,
                                              child: AppLoader()),
                                    )
                                    /* Image.network(
                                      table.logo,
                                      width: 30,
                                      height: 30,
                                    ) */
                                    ,
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    table.label.isEmpty
                                        ? Text(
                                            table.title.contains('BetPlay')
                                                ? table.title.replaceAll(
                                                    'BetPlay', '\nBetPlay')
                                                : table.title,
                                            textAlign: TextAlign.center,
                                          )
                                        : table.title.isEmpty
                                            ? Text(table.label)
                                            : Text(
                                                '${table.label}\n${table.title}',
                                                textAlign: TextAlign.center,
                                              )
                                  ],
                                ),
                              ))
                          .toList()),
                  Expanded(child: BlocBuilder<GetEndpointTablesBloc,
                      GetEndpointTablesState>(
                    builder: (context, state) {
                      List<dynamic> enpoints = state.listUrlEndpoint;
                      return enpoints.isEmpty
                          ? const AppLoader()
                          : TabBarView(
                              children: enpoints.map<Widget>((detailTable) {
                              if (!detailTable.toString().contains('web-')) {
                                TableDetailModel tableDetail = detailTable;
                                return Column(
                                  children: [
                                    Expanded(
                                      child: TableDetailWidget(
                                        tableDetailModel: tableDetail,
                                        listShieldMen: listShieldMen,
                                        listShieldWomen: listShieldWomen,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height: 10,
                                    )
                                  ],
                                );
                              } else {
                                return Column(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          const Center(child: AppLoader()),
                                          WebView(
                                            initialUrl: detailTable
                                                .toString()
                                                .replaceAll('web-', ''),
                                            javascriptMode:
                                                JavascriptMode.unrestricted,
                                            gestureRecognizers: Set()
                                              ..add(Factory<
                                                      VerticalDragGestureRecognizer>(
                                                  () =>
                                                      VerticalDragGestureRecognizer())),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height: 10,
                                    )
                                  ],
                                );
                              }
                            }).toList());
                    },
                  ))
                ],
              ));
        }
      },
    );
  }
}
