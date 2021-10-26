import 'package:bingo_tool/open_number_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cell extends StatelessWidget {
  final int number;
  late bool isOpen;
  final Function(Cell)? onOpened;

  Cell(this.number, {Key? key, this.onOpened, this.isOpen = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<OpenNumber>(
      builder: (_, OpenNumber open, __) {
        isOpen |= number == open.value;
        if (isOpen && number != -1) {
          onOpened!(this);
        }
        return Container(
          height: 20,
          width: 20,
          color: isOpen ? Colors.yellow : Colors.white,
          alignment: Alignment.center,
          child: Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        );
      },
    );
  }
}
