import 'package:bingo_tool/cell.dart';

class Line {
  final List<Cell> _cells;

  bool get isReach {
    return _cells.where((cell) => !cell.isOpen).length == 1;
  }

  bool get isBingo {
    return _cells.where((cell) => !cell.isOpen).isEmpty;
  }

  Line(this._cells);
}
