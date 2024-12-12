import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:polosys_machine_test/feature/homePage/model/home_model.dart';

class ApiServices {
  Future<List<HomeModel>> fetchData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data
          .whereType<Map<String, dynamic>>()
          .map((json) => HomeModel.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
