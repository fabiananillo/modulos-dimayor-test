import 'package:bloc/bloc.dart';
import 'package:table_v2/model/detail_table_models/stages/division/ranking/ranking_model.dart';
import 'package:table_v2/model/detail_table_models/stages/stages_model.dart';
import 'package:table_v2/model/table_detail/table_detail_model.dart';

import '../../model/shell_teams_model/shell_teams_model.dart';
import '../../repository/tables_detail_repository.dart';

part 'get_detail_tables_event.dart';
part 'get_detail_tables_state.dart';

class GetDetailTablesBloc
    extends Bloc<GetDetailTablesEvent, GetDetailTablesState>
    with TablesDetailRepository {

  GetDetailTablesBloc() : super(const GetDetailTablesInitial(listRanking: [])) {
    on<StageList>(getRanking);
  }

  void getRanking(
      StageList event, Emitter<GetDetailTablesState> emitter) {
    StageModel stageModel = StageModel.fromJson(event.stageList[0]);

    List<List<RankingModel>> listRanking =
        stageModel.division.map<List<RankingModel>>((ranking) {
      List<RankingModel> rankingData =
          ranking['ranking'].map<RankingModel>((ranking) {
        Map<String, dynamic> rankingMap = ranking;
        String urlIconShield = event.shieldList
            .singleWhere(
                (element) => element.fullName == rankingMap['contestantCode'])
            .ulrIconShellTeam;
        rankingMap['usrShieldTeam'] = urlIconShield;
        return RankingModel.fromJson(rankingMap);
      }).toList();

      return rankingData;
    }).toList();

    emitter(GetDetailTablesList(listRanking: listRanking));
  }
}
