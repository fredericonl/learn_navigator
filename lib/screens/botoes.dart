import 'package:flutter/material.dart';
import 'package:navegacao/screens/primeira_pagina.dart';
import 'package:navegacao/screens/retorno.dart';
import 'package:navegacao/screens/segunda_pagina.dart';
import 'package:navegacao/screens/terceira_pagina.dart';

class Botoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Link para Botões',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: <Widget>[],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Categorias'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PrimeiraPagina(),
                  ),
                );
              },
            ),
            //Melhor maneira de utilizara navegação. Elimina a pilha de telas que estão abertas;
            RaisedButton(
              child: Text('Produtos'),
              onPressed: () async {
                await Navigator.of(context).pushNamedAndRemoveUntil(
                  '/produtos',
                  ModalRoute.withName('/'),
                );
              },
            ),
            RaisedButton(
              child: Text('Financeiro'),
              onPressed: () {
                Navigator.of(context).pushNamed('/financeiro');
              },
            ),
            RaisedButton(
              child: Text('Retorno de Valor'),
              onPressed: () async {
                final idPessoa = await Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (_) => Retorno(),
                    //Enviando parâmetros
                    settings: RouteSettings(arguments: 1000),
                  ),
                );
                print('O idPessoa é: $idPessoa');
              },
            ),
            RaisedButton(
              child: Text('MediaQuery'),
              onPressed: () {
                Navigator.of(context).pushNamed('/media_query');
              },
            ),
          ],
        ),
      ),
    );
  }
}
