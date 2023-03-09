import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_v2/model/detail_table_models/stages/division/ranking/ranking_model.dart';
import 'package:table_v2/states/get_detail_tables/get_detail_tables_bloc.dart';
import 'package:table_v2/widget/loaders/app_loader.dart';
import 'package:table_v2/widget/table_detail/widgets/ranking_detail_content.dart';

class RankingWidget extends StatelessWidget {
  const RankingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDetailTablesBloc, GetDetailTablesState>(
      builder: (context, state) {
        return state.listRanking.isEmpty
            ? const Center(
                child: AppLoader(),
              )
            : Column(
                children: state.listRanking
                    .map<Widget>((listRanking) => Expanded(
                            child: Container(
                          color: state.listRanking.indexOf(listRanking) % 2 == 0
                              ? Colors.white
                              : Colors.grey[100],
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border:
                                        Border(bottom: BorderSide(width: 0.2))),
                                height: 35,
                                child: Row(
                                  children: const [
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'Pos.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'Club',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'PJ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'PG',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'PP',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'PE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      'PTS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                    Expanded(
                                        child: Center(
                                            child: Text(
                                      '+/-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: ListView.separated(
                                  itemCount: listRanking.length,
                                  itemBuilder: (context, index) {
                                    RankingModel rankingModel =
                                        listRanking[index];
                                    return RankingDetailContent(
                                        rankingModel: rankingModel);
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                ),
                              ),
                            ],
                          ),
                        )))
                    .toList(),
              );
      },
    );
  }
}
