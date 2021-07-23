import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/models/meal_model.dart';
import 'package:oxente_nutri_app/modules/home/home_controller.dart';
import 'package:oxente_nutri_app/shared/themes/app_colors.dart';
import 'package:oxente_nutri_app/shared/themes/app_images.dart';
import 'package:oxente_nutri_app/shared/themes/app_text_styles.dart';
import 'package:oxente_nutri_app/shared/widgets/progress_widget/progress_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const router = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          height: 200,
          // color: AppColors.primary,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.background2),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 1,
                left: 1,
                //right: 0,
                child: Image.asset(
                  AppImages.logoFull,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Progress_widget(),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  "Minhas Refeições",
                  style: TextStyles.titleBoldHeading,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          SafeArea(
            child: ChangeNotifierProvider(
              create: (context) => HomeController()..findMeal(),
              child: ListMeal(),
            ),
          ),
        ],
      ),
    );
  }
}

class ListMeal extends StatefulWidget {
  const ListMeal({Key? key}) : super(key: key);

  @override
  _ListMealState createState() => _ListMealState();
}

class _ListMealState extends State<ListMeal> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Consumer<HomeController>(builder: (_, controller, __) {
      if (controller.loading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      var meal = controller.meal;

      if (meal?.length == 0) {
        return Center(child: Text("Erro ao carregar Refeições"));
      }
      print(meal?[0].type);
      return ListView.builder(
          itemCount: meal?.length,
          itemBuilder: (context, index) {
            var item = meal?[index];
            return GestureDetector(
              child: Card(
                child: ListTile(
                  title: Text(
                    (item?.type).toString(),
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  subtitle: Text(
                    (item?.quantity).toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              onTap: () {
                //_showUsefulContacts(context, item.number, item.name);
              },
            );
          });
    });
  }
}
