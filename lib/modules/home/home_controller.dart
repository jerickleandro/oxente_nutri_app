import 'package:flutter/material.dart';
import 'package:oxente_nutri_app/models/meal_model.dart';
import 'package:oxente_nutri_app/repositories/meal_repository.dart';

class HomeController extends ChangeNotifier {
  MealRepository _repository = MealRepository();
  List<MealModel>? meal = [];
  bool loading = false;
  String? error;

  Future<void> findMeal() async {
    loading = true;
    error = null;
    notifyListeners();
    try {
      meal = await _repository.findAll();
    } catch (e) {
      print(e);
      error = 'Erro ao carregar refeições';
    } finally {
      notifyListeners();
      loading = false;
    }
  }
}
