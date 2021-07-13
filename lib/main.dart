import 'package:flutter/material.dart';
import 'package:navegacao/screens/botoes.dart';
import 'package:navegacao/screens/primeira_pagina.dart';
import 'package:navegacao/screens/segunda_pagina.dart';
import 'package:navegacao/screens/terceira_pagina.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Botoes(),
      routes: {
        '/financeiro': (_) => TerceiraPagina(),
        '/produtos': (_) => SegundaPagina(),
      },
    );
  }
}
