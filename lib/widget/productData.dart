import 'package:commerce_js_app/widget/productRepositery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import '../models/productModel.dart';
import 'ProductCard.dart';

class ProductsData extends StatefulWidget {
  const ProductsData({super.key});

  @override
  State<ProductsData> createState() => _ProductsDataGridState();
}

class _ProductsDataGridState extends State<ProductsData> {
  List<ProductModel> products = [];
  ProductsReposotory productsReposotory = ProductsReposotory();

  loadProducts() async {
    var productData = await productsReposotory.getProduct();
    setState(() {
      products = productData;
    });
  }

  _ProductsDataGridState() {
    loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 3,
                        childAspectRatio: 3 / 5,
                        mainAxisSpacing: 3),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      var product = products[index];
                      return ProductCard(product);
                    }),
              ))
        ],
      ),
    );
  }
}