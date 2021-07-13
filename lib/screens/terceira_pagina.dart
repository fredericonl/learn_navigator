import 'package:flutter/material.dart';

class TerceiraPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Financeiro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        actions: <Widget>[],
      ),
      body: Container(),
    );
  }
}
