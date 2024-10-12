import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductRemoteDataSource {
  final _apiKey = dotenv.env['SPOONACULAR_API_KEY'];
  final String _baseUrl = 'https://api.spoonacular.com/';

  Future<List<dynamic>> getFruits() async {
    return await _getProductsByCategory('fruits');
  }

  Future<List<dynamic>> getVegetables() async {
    return await _getProductsByCategory('vegetables');
  }

  Future<List<dynamic>> getDairy() async {
    return await _getProductsByCategory('dairy');
  }

  Future<List<dynamic>> getMeat() async {
    return await _getProductsByCategory('meat');
  }

  Future<List<dynamic>> getSnacks() async {
    return await _getProductsByCategory('snacks');
  }

  Future<List<dynamic>> _getProductsByCategory(String category) async {
    final url = Uri.parse('${_baseUrl}food/products/search?apiKey=$_apiKey&query=$category');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['products'];
    } else {
      throw Exception('Failed to load products');
    }
  }
}
