import 'package:exam_ecom/utils/list_product.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Cart'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            border:
                Border.symmetric(horizontal: BorderSide(color: Colors.black))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                  cartList.length,
                  (index) => cartlistfull(removeState: IconButton(onPressed: () {
                    setState(() {
                      cartList[index]['total']=0;
                      cartList[index]['inc_dec']=0;
                      cartList[index]['boolck']=false;
                      cartList.removeAt(index);
                    });
                  }, icon: const Icon(Icons.delete_forever_outlined,color: Colors.greenAccent,)),
                      incdec: cartList[index]['inc_dec'],
                      img: cartList[index]['product_image'],
                      addicon: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (cartList[index]['inc_dec'] > 1) {
                            cartList[index]['inc_dec']--;
                              cartList[index]['total']-=cartList[index]['product_price'];
                            }
                          });
                        },
                        child: const Icon(Icons.exposure_minus_1_sharp),
                      ),
                      decicon: GestureDetector(
                        onTap: () {
                          setState(() {
                            // if (cartList[index]['inc_dec'] !=1) {
                              cartList[index]['inc_dec']++;
                              cartList[index]['total']+=cartList[index]['product_price'];
                            // }
                          });
                        },
                        child: const Icon(Icons.exposure_plus_1),
                      ),
                      total: cartList[index]['total'],
                      name: cartList[index]['product_name'])),
            ],
          ),
        ),
      ),
    );
  }

  Row cartlistfull(
      {required AssetImage img,
      required String name,
      required var total,
      required GestureDetector addicon,
      required GestureDetector decicon,
      required IconButton removeState,
      required var incdec}) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: img,
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text('Total : ${total.toString()}'),
            removeState
          ],
        ),
        const Spacer(),
        Container(
          child: Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: addicon,
                // Icon(Icons.exposure_plus_1)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: decicon,
                // Icon(Icons.exposure_plus_1)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                // decoration:
                // BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  incdec.toString(),
                  style: const TextStyle(fontSize: 35),
                ),
                // Icon(Icons.exposure_plus_1)),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}
