import 'dart:developer';

import 'package:bingo_tool/cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BingoCard extends StatelessWidget {
  late List<List<Cell>> _cells;

  BingoCard(List<List<int>> numbers, {Key? key}) : super(key: key) {
    _cells = List.generate(5, (_) => List.generate(5, (_) => Cell(0)));
    for (var values in numbers) {
      var index = numbers.indexOf(values);
      log(index.toString());
      var cells = values.map((e) => Cell(e));
      _cells[index] = cells.toList();
    }
  }

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
        children: _cells.expand((element) => element).toList(),
      ),
    );
  }
}
