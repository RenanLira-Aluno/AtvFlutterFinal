import 'package:atv_final/components/button_component.dart';
import 'package:atv_final/components/input_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegistrarView extends StatefulWidget {
  const RegistrarView({super.key});

  @override
  State<RegistrarView> createState() => _RegistrarViewState();
}

class _RegistrarViewState extends State<RegistrarView> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputComponent(
              label: 'Nome', percentWidth: 60, controller: _controllerName),
          const SizedBox(
            height: 30,
          ),
          InputComponent(
              label: 'Email', percentWidth: 60, controller: _controllerEmail),
          const SizedBox(
            height: 30,
          ),
          ButtonComponent(
              textButton: 'Enviar', onPressedFunction: () {}, percentWidth: 60)
        ],
      ),
    );
  }
}
