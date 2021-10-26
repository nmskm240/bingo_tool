import 'package:bingo_tool/bingo_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BingoCardView extends StatelessWidget {
  const BingoCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: GridView.count(
        crossAxisCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        padding: const EdgeInsets.all(5),
        children: Provider.of<BingoCard>(context)
            .cells
            .expand((element) => element)
            .toList(),
      ),
    );
  }
}
