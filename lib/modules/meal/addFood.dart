import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddFoodState();
  }
}


class Food {
  final String name;
  final String kcal;

  Food(this.name, this.kcal);

  Food.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        kcal = json['kcal'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'kcal': kcal,
      };
}


class AddFoodState extends State<AddFood> {
  late String name;
  late String _kcal;

  Widget _Name() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nome'),
      maxLength: 10,
    );
  }

  
  Widget _Kcal() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Calorias'),
      keyboardType: TextInputType.visiblePassword,
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alimento")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _Name(),
                _Kcal(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: Color(0xFF216651), fontSize: 16),
                  ),
                  onPressed: () {
                    //if (!_formKey.currentState.validate()) {
                      return;
                    }                   //Send to API
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}