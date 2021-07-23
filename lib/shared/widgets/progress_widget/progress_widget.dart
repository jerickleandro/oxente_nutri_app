import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/shared/widgets/progress_widget/chart_widget.dart';
import 'package:oxente_nutri_app/shared/themes/app_text_styles.dart';

class Progress_widget extends StatelessWidget {
  const Progress_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Calorias",
                    style: TextStyles.buttonBoldBackground,
                  ),
                  Text(
                    "Inseridas:",
                    style: TextStyles.buttonBoldBackground,
                  ),
                  Text(
                    "485/Kcal",
                    style: TextStyles.buttonBoldBackground,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ChartWidget(),
          ),
        ],
      ),
    );
  }
}
