import 'package:atv_final/pages/TabBarView/calculadora_imc.dart';
import 'package:atv_final/pages/TabBarView/posto_gasolina_page.dart';
import 'package:flutter/material.dart';

import 'pages/TabBarView/registrar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.indigo,
          primaryColor: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todas Atividades'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home_filled),
              text: 'Registar',
            ),
            Tab(
              icon: Icon(Icons.ev_station),
              text: 'Posto Gasolina',
            ),
            Tab(
              icon: Icon(Icons.sports_gymnastics),
              text: 'IMC',
            )
          ]),
        ),
        body: TabBarView(children: [
          RegistrarView(),
          PostGasolinaPage(),
          CalculadoraIMC(),
        ]),
      ),
    );
  }
}
