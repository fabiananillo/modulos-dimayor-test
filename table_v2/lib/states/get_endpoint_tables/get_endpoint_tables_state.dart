part of 'get_endpoint_tables_bloc.dart';

abstract class GetEndpointTablesState extends Equatable {

  final List<dynamic> listUrlEndpoint;

  const GetEndpointTablesState(this.listUrlEndpoint);
}

class GetEndpointTablesInitial extends GetEndpointTablesState {
  const GetEndpointTablesInitial(super.listUrlEndpoint);

  @override
  List<Object> get props => [listUrlEndpoint];
}
