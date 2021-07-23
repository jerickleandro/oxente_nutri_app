import 'package:http/http.dart' as http;

const baseUrl =
    "http://localhost:3000";

class API {
  static Future getFoods() async {
    var url = Uri.parse(baseUrl + "/foods/");
    return await http.get(url);
  }
}