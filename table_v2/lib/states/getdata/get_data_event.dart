part of 'get_data_bloc.dart';

abstract class GetDataEvent extends Equatable {
  const GetDataEvent();
}

class GetTablesEvent extends GetDataEvent {
  const GetTablesEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
