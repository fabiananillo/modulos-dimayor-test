import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_app_bar_menu_model.freezed.dart';

part 'bottom_app_bar_menu_model.g.dart';


@freezed
class BottomAppBarModel with _$BottomAppBarModel {
  const factory BottomAppBarModel(
  {
    required String label,
    required String logo,
    required String type,
    required String url,
    required String id,
    required int show
}
      ) = _BottomAppBarModel;

  factory BottomAppBarModel.fromJson(Map<String, dynamic> json) =>
      _$BottomAppBarModelFromJson(json);
}
