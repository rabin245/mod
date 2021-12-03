import 'package:flutter/material.dart';

class ModInput extends StatelessWidget {
  final onKeyUp;

  const ModInput({Key? key, this.onKeyUp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: (width) / 4,
      child: TextFormField(
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        onChanged: (inp) {
          int? userInput = int.tryParse(inp);

          if (userInput == null) return;

          onKeyUp(userInput);
        },
        keyboardType: TextInputType.number,
      ),
    );
  }
}
