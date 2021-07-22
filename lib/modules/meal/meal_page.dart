import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class MealPage extends StatefulWidget {
//   const MealPage({Key? key}) : super(key: key);

//   @override
//   _MealPageState createState() => _MealPageState();
// }

// class _MealPageState extends State<MealPage> {
//   @override
//   Widget build(BuildContext context) {
//     return ListWheelScrollview(
//       children: [],
//       itemExtent:42,
//     );
//   }
// }
class MealPage extends StatelessWidget {
  const MealPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column( children: [
      _Breakfast(context),
      _Snack(context),
      _Lunch(context),
      _Snack2(context),
      _Dinner(context),
      _Supper(context)
    ],),
       );
      
      
  }
}

Widget _Breakfast(BuildContext context) {
  return Card(
      shadowColor: Color(0xFF216651),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: new InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 186, 160, 100),
                  Color.fromRGBO(184, 216, 192, 100),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(
                Icons.free_breakfast_outlined,
                color: Color(0xFF216651),
                size: 30.0,
              ),
              Text("Café da Manhã",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text("350 Kcal")
            ]),
          )));
}

Widget _Snack(BuildContext context) {
  return Card(
      shadowColor: Color(0xFF216651),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 186, 160, 100),
                  Color.fromRGBO(184, 216, 192, 100),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(
                Icons.breakfast_dining_outlined,
                color: Color(0xFF216651),
                size: 30.0,
              ),
              Text("Lanche da Manhã",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text("100 Kcal")
            ]),
          )));
}

Widget _Lunch(BuildContext context) {
  return Card(
      shadowColor: Color(0xFF216651),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 186, 160, 100),
                  Color.fromRGBO(184, 216, 192, 100),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(
                Icons.dining_outlined,
                color: Color(0xFF216651),
                size: 30.0,
              ),
              Text("Almoço",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text("985 Kcal")
            ]),
          )));
}

Widget _Snack2(BuildContext context) {
  return Card(
      shadowColor: Color(0xFF216651),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 186, 160, 100),
                  Color.fromRGBO(184, 216, 192, 100),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
               Icon(
                Icons.breakfast_dining_outlined,
                color: Color(0xFF216651),
                size: 30.0,
              ),
              Text("Lanche da Tarde",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              
              Text("248 Kcal")
            ]),
          )));
}

Widget _Dinner(BuildContext context) {
  return Card(
      shadowColor: Color(0xFF216651),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 186, 160, 100),
                  Color.fromRGBO(184, 216, 192, 100),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
               Icon(
                Icons.dinner_dining_outlined,
                color: Color(0xFF216651),
                size: 30.0,
              ),
              Text("Janta",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text("645 Kcal")
            ]),
          )));
}

Widget _Supper(BuildContext context) {
  return Card(
      shadowColor: Color(0xFF216651),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(116, 186, 160, 100),
                  Color.fromRGBO(184, 216, 192, 100),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
               Icon(
                Icons.emoji_food_beverage_outlined,
                color: Color(0xFF216651),
                size: 25.0,
              ),
              Text("Ceia",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text("85 Kcal")
            ]),
          )));
}