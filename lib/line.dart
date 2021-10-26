import 'package:bingo_tool/cell.dart';

class Line {
  final List<Cell> cells;

  bool get isReach {
    return cells.where((cell) => !cell.isOpen).length == 1;
  }

  bool get isBingo {
    return cells.where((cell) => !cell.isOpen).isEmpty;
  }

  Line(this.cells);
}
