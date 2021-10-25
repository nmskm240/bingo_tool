import 'package:bingo_tool/cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BingoCard extends StatelessWidget {
  const BingoCard({Key? key}) : super(key: key);

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
        children: [
          Cell(1),
          Cell(2),
          Cell(3),
          Cell(4),
          Cell(5),
          Cell(6),
          Cell(7),
          Cell(8),
          Cell(9),
          Cell(10),
          Cell(11),
          Cell(12),
          Cell(13),
          Cell(14),
          Cell(15),
          Cell(16),
          Cell(17),
          Cell(18),
          Cell(19),
          Cell(20),
          Cell(21),
          Cell(22),
          Cell(23),
          Cell(24),
          Cell(25),
        ],
      ),
    );
  }
}
