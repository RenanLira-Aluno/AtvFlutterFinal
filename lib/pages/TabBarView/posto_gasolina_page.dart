import 'package:flutter/material.dart';

import '../../components/button_component.dart';
import '../../components/input_component.dart';

class PostGasolinaPage extends StatefulWidget {
  const PostGasolinaPage({super.key});

  @override
  State<PostGasolinaPage> createState() => _PostGasolinaPageState();
}

class _PostGasolinaPageState extends State<PostGasolinaPage> {
  TextEditingController _controllerGasolina = TextEditingController();
  TextEditingController _controllerAlcool = TextEditingController();

  String responseText = '';

  void calcGasolina() {
    double alcool = double.tryParse(_controllerAlcool.text) ?? 0;
    double gasolina = double.tryParse(_controllerGasolina.text) ?? 0;

    double resultado = alcool / gasolina * 100;

    if (resultado >= 70) {
      setState(() {
        responseText = 'Abastecer com Alcool';
      });
    } else {
      setState(() {
        responseText = 'Abastecer com Gasolina';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://cdn-icons-png.flaticon.com/512/224/224480.png',
                width: 300),
            const SizedBox(
              height: 20,
            ),
            InputComponent(
                label: 'Preço Alcool',
                percentWidth: 60,
                controller: _controllerGasolina,
                inputType: TextInputType.number),
            const SizedBox(
              height: 30,
            ),
            InputComponent(
                label: 'Preço Gasolina',
                percentWidth: 60,
                controller: _controllerAlcool,
                inputType: TextInputType.number),
            const SizedBox(
              height: 30,
            ),
            ButtonComponent(
                textButton: 'Calcular',
                onPressedFunction: calcGasolina,
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
      ),
    );
    ;
  }
}
