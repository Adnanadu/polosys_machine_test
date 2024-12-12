import 'dart:convert';
import 'dart:developer';

import 'package:polosys_machine_test/feature/homePage/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl = "'https://fakestoreapi.com/";
  static const String endPoint = "products";
  final String url = baseUrl + endPoint;
  // <List<HomeModel>>
  Future fetchData() async {
    final response = await http.get(Uri.parse(url));
    try {
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        final data =
            parsed.map<HomeModel>((json) => HomeModel.fromJson(json)).toList();
        log(data);
        return data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
