import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpenNumberForm extends StatelessWidget {
  OpenNumberForm({Key? key}) : super(key: key);

  final _key = GlobalKey<FormState>();
  final _controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Form(
        key: _key,
        child: Row(
          children: [
            Flexible(
              child: TextFormField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "数字",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "数字を入力してください";
                  }
                  var num = int.tryParse(value) ?? 0;
                  if (0 < num && num < 100) {
                    return null;
                  } else {
                    return "無効な範囲が入力されました";
                  }
                },
                onSaved: (value) {
                  _controller.clear();
                  Provider.of<OpenNumber>(context, listen: false).value =
                      int.tryParse(value!) ?? -1;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _key.currentState!.save();
                }
              },
              child: const Text("Open"),
            )
          ],
        ),
      ),
    );
  }
}

class OpenNumber extends ValueNotifier<int> {
  OpenNumber(int value) : super(value);
}
