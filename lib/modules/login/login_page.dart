import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/modules/home/home_page.dart';
import 'package:oxente_nutri_app/shared/themes/app_colors.dart';
import 'package:oxente_nutri_app/shared/themes/app_images.dart';
import 'package:oxente_nutri_app/shared/themes/app_text_styles.dart';
import 'package:oxente_nutri_app/shared/widgets/button_login/login_button.dart';

class LoginPage extends StatefulWidget {
  static const router = '/login';
  const LoginPage() : super();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
                child: Container(
              child: Image.asset(AppImages.background),
            )),
            Positioned(
                top: size.height * 0.30,
                left: 0.10,
                right: 0.10,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset(AppImages.logoFull),
                    )
                  ],
                )),
            Positioned(
              bottom: size.height * 0.10,
              right: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 5),
                    child: LoginButton(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
