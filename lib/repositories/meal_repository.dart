import 'package:oxente_nutri_app/exceptions/rest_exception.dart';
import 'package:dio/dio.dart';
import 'package:oxente_nutri_app/models/meal_model.dart';

class MealRepository {
  Future<List<MealModel>?> findAll() async {
    try {
      final response = await Dio().get('http://localhost:3000/meal/');
      return response.data.map<MealModel>((m) => MealModel.fromMap(m)).toList();
    } catch (e) {
      print(e);
      throw RestException('Erro ao buscar Refeições');
    }
  }
}
