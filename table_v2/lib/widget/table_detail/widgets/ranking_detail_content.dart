import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:table_v2/model/detail_table_models/stages/division/ranking/ranking_model.dart';
import 'package:table_v2/widget/loaders/app_loader.dart';

class RankingDetailContent extends StatelessWidget {
  final RankingModel rankingModel;
  const RankingDetailContent({Key? key, required this.rankingModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Center(
                child: rankingModel.rank <= 8
                    ? CircleAvatar(
                        radius: 12,
                        backgroundColor: const Color(0xff191c2c),
                        child: Text(
                          rankingModel.rank.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    : Text(rankingModel.rank.toString()))),
        SizedBox(
          height: 30,
          width: 30,
          child: Center(
            child: Column(
              children: [
                CachedNetworkImage(
                  height: 30.0,
                  imageUrl: rankingModel.usrShieldTeam,
                  placeholder: (context, url) =>
                      const SizedBox(height: 30, width: 30, child: AppLoader()),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Center(
                child: Text(
          rankingModel.contestantCode,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ))),
        Expanded(
            child: Center(child: Text(rankingModel.matchesPlayed.toString()))),
        Expanded(
            child: Center(child: Text(rankingModel.matchesWon.toString()))),
        Expanded(
            child: Center(child: Text(rankingModel.matchesLost.toString()))),
        Expanded(
            child: Center(child: Text(rankingModel.matchesDrawn.toString()))),
        Expanded(child: Center(child: Text(rankingModel.points.toString()))),
        Expanded(child: Center(child: Text(rankingModel.goaldifference)))
      ],
    );
  }
}
