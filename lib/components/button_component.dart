import 'package:flutter/material.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent(
      {super.key,
      required this.textButton,
      required this.onPressedFunction,
      required this.percentWidth});
  final String textButton;
  final Function onPressedFunction;
  final int percentWidth;

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width / 100) * widget.percentWidth;

    return Container(
      width: width,
      child: ElevatedButton(
          onPressed: () => widget.onPressedFunction(),
          child: Text(widget.textButton)),
    );
  }
}
