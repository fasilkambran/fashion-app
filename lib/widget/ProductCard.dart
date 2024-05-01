import 'package:flutter/material.dart';


import '../models/productModel.dart';

class ProductCard extends StatelessWidget {
  ProductCard(this.product, {super.key});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Image.network(
              product.image,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Text(
          product.title,
          style: const TextStyle(
              fontSize: 22,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold),
        ),
        Text(
          product.description,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '\$${product.price.toString()}',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}