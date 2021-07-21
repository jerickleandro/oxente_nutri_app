import 'dart:html';

import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/modules/cadastro/cadastro_page.dart';

class HomePage extends StatefulWidget {
  static const router = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, CadastroPage.router);
                },
                child: Text('Cadastrar Dieta'))
          ],
        ),
      ),
    );
  }
}
