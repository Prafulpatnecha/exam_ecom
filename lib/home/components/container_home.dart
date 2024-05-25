import 'package:flutter/material.dart';

import '../../utils/images.dart';


Row profileContainer() {
  return Row(
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: profileimg,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      const Column(
        children: [
          Text(
            'Hi,Administer',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          Text('Lets go Shopping',style: TextStyle(
            color: Color(0xff959595),
          ),),
        ],
      ),
      const Spacer(),
      const Icon(Icons.search,size: 35,color: Colors.black,),
      const Icon(Icons.notifications_none,size: 38,color: Colors.black,),
      const SizedBox(width: 10,),
    ],
  );
}

Stack bennerConteiner() {
  return Stack(
    children: [
      Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            const SizedBox(width: 5,),
            const Column(
              children: [
                SizedBox(height: 20,),
                Text('24%Off shipping today',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),Text('on bag purchases',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),Text('by Kutuku Store',style: TextStyle(
                  color: Color(0xfc535353),
                  fontSize: 15,
                ),),
              ],
            ),
            Image(image: benner,width: 140,),
          ],
        ),
      ),
    ],
  );
}
Row seeAll() {
  return const Row(
    children: [
      SizedBox(width: 10,),
      Text('New Arrifals🔥',style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),),
      Spacer(),
      Text('See All',style: TextStyle(
        color: Colors.indigo,
        fontSize: 15,
      ),),
      SizedBox(width: 20,),
    ],
  );
}
Widget productData({required AssetImage img,required int price,required String brand,required String name}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(10),
        height: 160,
        width: 160,
        decoration: BoxDecoration(
            color: Colors.blue,
            image:DecorationImage(
                image: img,
                fit: BoxFit.cover
            ),
        ),
      ),
      SizedBox(
        // color: Colors.blue,
        height: 90,
        width: 160,
        child: Column(
          children: [
            Text(name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
            ,Text(brand,style: const TextStyle(color: Color(
                0xff666666),fontSize: 18),)
            ,Text('\$${price.toString()}',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
          ],
        ),
      ),
    ],
  );
}