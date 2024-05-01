import 'package:flutter/material.dart';


import '../widget/productData.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search))
      ],),
      body: const Column(
        children: [Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
              child: Text("Products",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            )
          ],
        ),
          ProductsData()
        ],
      ),
      bottomNavigationBar: NavigationBar(
          destinations: const[
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.trolley), label: "products"),
            NavigationDestination(icon: Icon(Icons.notifications), label: "message"),
            NavigationDestination(icon: Icon(Icons.person), label: "profile")
          ]

      ),
    );
  }
}
