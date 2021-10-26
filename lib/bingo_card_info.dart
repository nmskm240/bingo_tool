import 'dart:developer';

import 'package:bingo_tool/bingo_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BingoCardInfo extends StatelessWidget {
  const BingoCardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Consumer<BingoCard>(
        builder: (_, BingoCard card, __) {
          return Text("リーチ： ${card.isReach}");
        },
      ),
    );
  }
}
