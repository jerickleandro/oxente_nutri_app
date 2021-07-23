import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/modules/API/api.dart';
import 'package:oxente_nutri_app/modules/home/home_page.dart';
import 'package:oxente_nutri_app/shared/themes/app_colors.dart';
import 'package:oxente_nutri_app/shared/themes/app_text_styles.dart';

class LoginButton extends StatelessWidget {
  // final VoidCallback onTap;
  LoginButton() : super();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        API.login(emailController.text, passwordController.text).then((value) =>
            {
              print(value),
              Navigator.pushReplacementNamed(context, HomePage.router)
            });
        // .then((value) =>
        //     {
        //       print(value),
        //     });
      },
      child: Container(
        width: 500,
        height: 300,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.blueGrey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 40,
              )
            ]),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromRGBO(33, 102, 81, 100),
                  ),
                  hintText: 'Email'),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(33, 102, 81, 100),
                  ),
                  hintText: 'Senha'),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Esqueceu a Senha?',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                )),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF74BAA0),
                      Color(0xFFB8D8C0),
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Center(
                child: Text(
                  'Login'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
