import 'dart:developer';

import 'package:bingo_tool/cell.dart';
import 'package:bingo_tool/line.dart';
import 'package:flutter/cupertino.dart';

class BingoCard extends ChangeNotifier {
  late List<List<Cell>> cells;
  late List<Line> _lines;

  bool get isReach => _lines.where((line) => line.isReach).isNotEmpty;
  bool get isBingo => _lines.where((line) => line.isBingo).isNotEmpty;

  BingoCard(List<List<int>> numbers) {
    cells = List.generate(5, (_) => List.generate(5, (_) => Cell(0)));
    for (var values in numbers) {
      var index = numbers.indexOf(values);
      var newCells = values.map((value) => Cell(
            value,
            onOpened: (Cell cell) {
              notifyListeners();
            },
          ));
      cells[index] = newCells.toList();
    }
    _lines = [
      Line([
        cells[0][0],
        cells[0][1],
        cells[0][2],
        cells[0][3],
        cells[0][4],
      ]),
      Line([
        cells[1][0],
        cells[1][1],
        cells[1][2],
        cells[1][3],
        cells[1][4],
      ]),
      Line([
        cells[2][0],
        cells[2][1],
        cells[2][2],
        cells[2][3],
        cells[2][4],
      ]),
      Line([
        cells[3][0],
        cells[3][1],
        cells[3][2],
        cells[3][3],
        cells[3][4],
      ]),
      Line([
        cells[4][0],
        cells[4][1],
        cells[4][2],
        cells[4][3],
        cells[4][4],
      ]),
      Line([
        cells[0][0],
        cells[1][0],
        cells[2][0],
        cells[3][0],
        cells[4][0],
      ]),
      Line([
        cells[0][1],
        cells[1][1],
        cells[2][1],
        cells[3][1],
        cells[4][1],
      ]),
      Line([
        cells[0][2],
        cells[1][2],
        cells[2][2],
        cells[3][2],
        cells[4][2],
      ]),
      Line([
        cells[0][3],
        cells[1][3],
        cells[2][3],
        cells[3][3],
        cells[4][3],
      ]),
      Line([
        cells[0][4],
        cells[1][4],
        cells[2][4],
        cells[3][4],
        cells[4][4],
      ]),
      Line([
        cells[0][0],
        cells[1][1],
        cells[2][2],
        cells[3][3],
        cells[4][4],
      ]),
      Line([
        cells[4][0],
        cells[3][1],
        cells[2][2],
        cells[1][3],
        cells[0][4],
      ]),
    ];
  }
}
