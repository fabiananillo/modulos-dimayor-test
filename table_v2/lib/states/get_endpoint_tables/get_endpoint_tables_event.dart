part of 'get_endpoint_tables_bloc.dart';

abstract class GetEndpointTablesEvent extends Equatable {
  final List<TableModel> listTables;

  const GetEndpointTablesEvent(this.listTables);
}

class GetTableDataEvent extends GetEndpointTablesEvent {
  const GetTableDataEvent(super.listTables);

  @override
  // TODO: implement props
  List<Object?> get props => [listTables];
}
