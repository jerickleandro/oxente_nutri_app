import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

const baseUrl = "http://localhost:3000";

class API {
  // static Future login(String email, password) async {
  //   print("EMAIL " + email);
  //   Map<String, dynamic> body = {
  //     "name": "victor novo",
  //     "email": "victornovo@email.com",
  //     "pass": password,
  //     "crn": "887722"
  //   };
  //   var url = Uri.parse(baseUrl + "/session/");
  //   return await http.post(url, body: json.encode(body));
  // }

  static Future login(String email, String password) async {
    var url = (baseUrl + "/session/");
    final response = await Dio().post(url, data: {
      'name': 'victor novo',
      'email': "victornovo@email.com",
      'password': "teste123",
      'crn': "887722"
    });
    return response.data;
  }
}
