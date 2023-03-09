import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_v2/model/table_detail/table_detail_model.dart';
import 'package:table_v2/widget/table_detail/ranking_widget.dart';

import '../../model/shell_teams_model/shell_teams_model.dart';
import '../../states/get_detail_tables/get_detail_tables_bloc.dart';

class TableDetailWidget extends StatefulWidget {
  final TableDetailModel tableDetailModel;
  final List<ShellTeamsModel> listShieldMen;
  final List<ShellTeamsModel> listShieldWomen;
  const TableDetailWidget(
      {Key? key,
      required this.tableDetailModel,
      required this.listShieldMen,
      required this.listShieldWomen})
      : super(key: key);

  @override
  State<TableDetailWidget> createState() => _TableDetailWidgetState();
}

class _TableDetailWidgetState extends State<TableDetailWidget> {
  @override
  void initState() {
    context.read<GetDetailTablesBloc>().add(StageList(
          stageList: widget.tableDetailModel.stage,
          shieldList: widget.tableDetailModel.ruleset['name'] == 'Men'
              ? widget.listShieldMen
              : widget.listShieldWomen,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: RankingWidget()),
        widget.tableDetailModel.legend.isEmpty
            ? const SizedBox()
            : Container(
                height: 30,
                color: Colors.white,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    const CircleAvatar(
                        radius: 8, backgroundColor: Color(0xff191c2c)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      widget.tableDetailModel.legend,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
      ],
    );
  }
}
