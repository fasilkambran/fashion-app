import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var offerProduct = [
    "assets/offerProduct/image 90.png",
    "assets/offerProduct/jeremy-budiman-SJQ2zukqpzI-unsplash.jpg",
    "assets/offerProduct/jess-bailey-NaTza96eJm0-unsplash.jpg",
    "assets/offerProduct/kenny-eliason-wSX-poSLSKE-unsplash.jpg",
  ];
  final pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Image.asset('assets/Icons/Rectangle 97.png',width: 55,height: 55,)
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset("assets/Icons/filtter.png"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child:  Column(
            children: [ const Padding(padding: EdgeInsets.only(left: 20,top: 35),
              child: Row(children: [
                Text("welcome",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                    fontSize: 30),
                )
              ],
              ),
            ),
              const Padding(padding: EdgeInsets.only(left: 20,top: 10),
                child: Row(
                  children: [
                    Text("Fashion",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blueGrey),
                    )
                  ],
                ),
              ),
              Padding(padding:  const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextField(
                  decoration: InputDecoration(contentPadding:  const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                      hintText: "search",hintStyle: const TextStyle(fontSize: 20),prefixIcon: IconButton(onPressed: (){}, icon:  Icon(Icons.search),),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(60),
                          borderSide: const BorderSide())),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    margin:  const EdgeInsets.symmetric(vertical: 20),
                    child: PageView.builder(itemCount: offerProduct.length,controller: pageController,itemBuilder: (context,index){
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(image: AssetImage(offerProduct[index]),
                              fit: BoxFit.fill),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(padding: EdgeInsets.only(left: 10),
                                  child: Text("50% Off",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                ),
                                const Padding(padding: EdgeInsets.only(left: 10),child: Text("today's Offers",style: TextStyle(fontSize: 20),),
                                ),
                                Padding(padding: const EdgeInsets.all(10),
                                  child: ElevatedButton(onPressed: (){
                                    Navigator.pushNamed(context, "/product screen");
                                  },style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
                                      child: const Text("Add to cart",
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      );
                    },),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(right: 20,top: 20),),
              Row(children: [
                const Padding(padding: EdgeInsets.only(top: 10,left: 20),
                  child: Text("New Products",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Padding(padding: const EdgeInsets.only(left: 20),child: TextButton(onPressed: (){
                  Navigator.pushNamed(context, "/product screen");
                }, child: Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: const Text("See All",style: TextStyle(color: Colors.black,fontSize: 18),),
                )),)
              ],
              ) ,
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 7,),
                    child: InkWell(onTap: (){
                      setState(() {
                        Navigator.pushNamed(context, "/product screen");
                      });
                    },
                      child: Card(
                        elevation: 9,
                        child: SizedBox(width: 180,height: 270,
                          child: Column(
                            children: [
                              Image.asset("assets/CardProduct/image.png"),
                              const Text("Women's bag",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              const Text("leather bag",style: TextStyle(fontSize: 16),),
                              const Text("\$72",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 10),
                    child: InkWell(onTap: (){
                      setState(() {
                        Navigator.pushNamed(context, "/product screen");
                      });
                    },
                      child: Card(
                        elevation: 9,
                        child: SizedBox(width: 180,height: 270,
                          child: Column(
                            children: [
                              Image.asset("assets/CardProduct/laura-chouette-4sKdeIMiFEI-unsplash.jpg",height: 190,),
                              const Text("Coco perfume",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              const Text("luxury perfume stock ",style: TextStyle(fontSize: 15),),
                              const  Text("\$90",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)

                            ],
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        ),
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
