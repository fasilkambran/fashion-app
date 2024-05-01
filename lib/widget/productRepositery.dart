import 'dart:convert';

import 'package:http/http.dart' as http;


import '../models/productModel.dart';

class ProductsReposotory {
  Future<List<ProductModel>> getProduct() async {
    var response =
    await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      var productsData = jsonDecode(response.body);
      var productsList = productsData.map<ProductModel>((prd) {
        return ProductModel.fromJson(prd);
      }).toList();
      return productsList;
    }

    return [];
  }
}