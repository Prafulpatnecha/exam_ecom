import 'package:exam_ecom/utils/list_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        centerTitle: true,
        title: const Text(
          'Detail Product',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/cart');
            },
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 35,
            ),
          ),
        ],
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          setState(() {
          if(productList1[selectindex]['boolck']==false)
            {
              productList1[selectindex]['total']+=productList1[selectindex]['product_price'];
              productList1[selectindex]['inc_dec']++;
              productList1[selectindex]['boolck']=true;
              amount=productList1[selectindex]['product_price']+amount;
              cartList.add(productList1[selectindex]);
            }
          Navigator.of(context).pushNamed('/cart');
          });
        },
        child: Container(
          height: 60,
          // color: Colors.black26,
          child: const Center(
            child: Text(
              'Add To Cart',style: TextStyle(color: Colors.black,fontSize: 35),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: productList1[selectindex]['product_image'],
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              // height: 350,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          productList1[selectindex]['product_name'],
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text('\$ ${productList1[selectindex]['product_price'].toString()}',
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Decoration',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            productList1[selectindex]['product_desciption'],
                            style: const TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
