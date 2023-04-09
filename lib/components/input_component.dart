import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputComponent extends StatefulWidget {
  const InputComponent(
      {super.key,
      required this.label,
      required this.percentWidth,
      required this.controller,
      this.inputType});

  final String label;
  final int percentWidth;
  final TextEditingController controller;
  final TextInputType? inputType;

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  @override
  Widget build(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width / 100) * widget.percentWidth;

    return Container(
      width: width,
      child: TextFormField(
        decoration: InputDecoration(label: Text(widget.label)),
        controller: widget.controller,
        keyboardType: widget.inputType ?? TextInputType.text,
      ),
    );
  }
}
