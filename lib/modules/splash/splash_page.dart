import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/shared/themes/app_colors.dart';
import 'package:oxente_nutri_app/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  final String router = "splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.background)),
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      ),
    );
  }
}
