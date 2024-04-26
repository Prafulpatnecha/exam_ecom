// import 'package:exam_ecom/utils/images.dart';
// import 'package:exam_ecom/utils/list_product.dart';
import 'package:exam_ecom/utils/list_product.dart';
import 'package:flutter/material.dart';

import 'cartscreen/cart.dart';
import 'components/container_home.dart';
import 'detailscreen/detail_page.dart';

class MyEcom extends StatelessWidget {
  const MyEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/details':(context) => const DetailPage(),
        '/cart':(context) => CartPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(2),
          // color: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                profileContainer(),
                const SizedBox(
                  height: 20,
                ),
                bennerConteiner(),
                const SizedBox(height: 20,),
                seeAll(),
                const SizedBox(height: 10,),
                Wrap(
                  children: [
                    ...List.generate(productList1.length, (index) => GestureDetector(onTap: () {
                      selectindex=index;
                      Navigator.of(context).pushNamed('/details');
                    },child: productData(price: productList1[index]['product_price'],brand: productList1[index]['product_category'],img:productList1[index]['product_image'],name: productList1[index]['product_name']))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
