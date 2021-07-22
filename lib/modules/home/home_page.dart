import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/modules/meal/meal_page.dart';

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
      body: SingleChildScrollView(
      child:
          MealPage(),
      ),
    );
  }
}
