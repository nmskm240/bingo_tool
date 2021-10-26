import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cell extends StatefulWidget {
  final int number;
  late bool isOpen;
  final Function(Cell)? onOpened;
  final _state = _CellState();

  Cell(this.number, {Key? key, this.onOpened, this.isOpen = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _state;
}

class _CellState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 20,
        width: 20,
        color: widget.isOpen ? Colors.yellow : Colors.white,
        alignment: Alignment.center,
        child: Text(
          widget.number.toString(),
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          widget.isOpen = true;
          widget.onOpened!(widget);
        });
      },
    );
  }
}
