import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/modules/home/home_page.dart';
import 'package:oxente_nutri_app/shared/themes/app_colors.dart';

import 'modules/login/login_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OxenteNutri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: LoginPage.router,
      routes: {
        LoginPage.router: (_) => LoginPage(),
        HomePage.router: (_) => HomePage(),
      },
    );
  }
}
