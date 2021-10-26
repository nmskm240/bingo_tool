import 'package:bingo_tool/bingo_card_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bingo_card.dart';
import 'bingo_card_info.dart';

class BingoCardTile extends StatelessWidget {
  const BingoCardTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BingoCard>(
      create: (_) => BingoCard(const [
        [5, 23, 39, 48, 64],
        [9, 24, 31, 56, 70],
        [2, 18, -1, 60, 61],
        [14, 29, 36, 49, 69],
        [10, 22, 33, 53, 75]
      ]),
      child: Card(
        child: Column(
          children: const [
            BingoCardView(),
            BingoCardInfo(),
          ],
        ),
      ),
    );
  }
}
