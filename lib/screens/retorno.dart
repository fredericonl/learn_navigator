import 'dart:io';

import 'package:flutter/material.dart';

class Retorno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Retornar valor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop(999);
            },
            //Recebendo valor do Route
            child: Text(
              'Voltar - Valor Rececibo ${ModalRoute.of(context).settings.arguments}',
            ),
          ),
        ),
      ),
    );
  }
}
