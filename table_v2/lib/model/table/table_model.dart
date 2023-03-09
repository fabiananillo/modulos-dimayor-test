import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_model.freezed.dart';
part 'table_model.g.dart';


@freezed
class TableModel with _$TableModel {
  const factory TableModel(
      {required String label,
      required String title,
      required String logo,
      required String type,
      required String url,
        required String legend,
        required int show
      }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);
}
