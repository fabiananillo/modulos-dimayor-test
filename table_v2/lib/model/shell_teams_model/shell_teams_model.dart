import 'package:freezed_annotation/freezed_annotation.dart';

part 'shell_teams_model.g.dart';

part 'shell_teams_model.freezed.dart';

@freezed
class ShellTeamsModel with _$ShellTeamsModel {
  const factory ShellTeamsModel({
    required String ulrIconShellTeam,
    required String idShield,
    required String fullName
}) = _ShellTeamsModel;

  factory ShellTeamsModel.fromJson(Map<String, dynamic> json) =>
      _$ShellTeamsModelFromJson(json);
}
