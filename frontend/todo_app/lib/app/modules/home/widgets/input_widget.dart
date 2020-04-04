import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final String initialValue;
  final Function function;
  final Function erroText;
  const InputWidget(
      {Key key, this.label, this.function, this.erroText, this.initialValue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: function,
      initialValue: initialValue,
      decoration: InputDecoration(
          errorText: erroText == null ? null : erroText(),
          border: OutlineInputBorder(),
          labelText: label),
    );
  }
}
