import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:table_v2/model/table/table_model.dart';
import 'package:table_v2/repository/tables_detail_repository.dart';

import '../../model/table_detail/table_detail_model.dart';

part 'get_endpoint_tables_event.dart';
part 'get_endpoint_tables_state.dart';

class GetEndpointTablesBloc
    extends Bloc<GetEndpointTablesEvent, GetEndpointTablesState>
    with TablesDetailRepository {
  final List endpointList;

  GetEndpointTablesBloc(this.endpointList)
      : super(GetEndpointTablesInitial(endpointList)) {
    on<GetEndpointTablesEvent>((event, emit) async {
      if (endpointList.isEmpty) {
        List<dynamic> listEndPoints = event.listTables
            .map<dynamic>((table) => table.type == 'native'
                ? {
                    // 'type': table.url.replaceAll(
                    //     'https://appfutbolcolombiano.com/api/standingsJSON?type=',
                    //     ''),
                    'host': table.url,
                    'legend': table.legend
                  }
                : 'web-${table.url}')
            .toList();

        for (int i = 0; i < listEndPoints.length; i++) {
          if (!listEndPoints[i].toString().contains('web-')) {
            listEndPoints[i] = await detailTable(listEndPoints[i]);
          }
        }

        emit(GetEndpointTablesInitial(listEndPoints));
      } else {
        emit(GetEndpointTablesInitial(endpointList));
      }
    });
  }
  Future<TableDetailModel> detailTable(Map<String, dynamic> urlDetail) async {
    return await fetchTables(
            host: urlDetail['host'], legend: urlDetail['legend'])
        .then((value) => value);
  }
}
