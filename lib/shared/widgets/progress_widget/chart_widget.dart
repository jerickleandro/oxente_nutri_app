import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/shared/themes/app_colors.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 15,
                value: .75,
                backgroundColor: AppColors.body,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.shape),
              ),
            ),
          ),
          Center(
            child: Text("75%"),
          )
        ],
      ),
    );
  }
}
