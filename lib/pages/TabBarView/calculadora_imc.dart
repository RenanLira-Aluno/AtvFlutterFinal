import 'package:flutter/material.dart';

import '../../components/button_component.dart';
import '../../components/input_component.dart';

class CalculadoraIMC extends StatefulWidget {
  const CalculadoraIMC({super.key});

  @override
  State<CalculadoraIMC> createState() => _CalculadoraIMCState();
}

class _CalculadoraIMCState extends State<CalculadoraIMC> {
  TextEditingController _controllerPeso = TextEditingController();
  TextEditingController _controllerAltura = TextEditingController();

  String responseText = '';

  void calcIMC() {
    double peso = double.tryParse(_controllerPeso.text) ?? 0;
    double altura = double.tryParse(_controllerAltura.text) ?? 0;

    double resultado = peso / (altura * altura);

    if (resultado < 18.5) {
      setState(() {
        responseText = 'Abaixo do peso';
      });
    } else if (resultado >= 18.5 && resultado < 25) {
      setState(() {
        responseText = 'Peso Normal';
      });
    } else if (resultado >= 25 && resultado < 30) {
      setState(() {
        responseText = 'Acima do peso';
      });
    } else if (resultado >= 30) {
      setState(() {
        responseText = 'Obesidade';
      });
    }
  }

  void resetarTab() {
    setState(() {
      responseText = '';
      _controllerPeso.text = '';
      _controllerAltura.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InputComponent(
              label: 'Peso',
              percentWidth: 60,
              controller: _controllerPeso,
              inputType: TextInputType.number),
          const SizedBox(
            height: 30,
          ),
          InputComponent(
              label: 'Altura',
              percentWidth: 60,
              controller: _controllerAltura,
              inputType: TextInputType.number),
          const SizedBox(
            height: 30,
          ),
          ButtonComponent(
              textButton: 'Resetar',
              onPressedFunction: resetarTab,
              percentWidth: 60),
          ButtonComponent(
              textButton: 'Calcular',
              onPressedFunction: calcIMC,
              percentWidth: 60),
          const SizedBox(
            height: 60,
          ),
          Text(
            responseText,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
