import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kavyasaree/homepge.dart';
import 'package:kavyasaree/product_data.dart';

class product_detail extends StatelessWidget {
  // final String id;
  // final String img;
  // final String price;
  // final String name;

  // const product_detail(
  //     {Key? key,
  //     required this.id,
  //     required this.img,
  //     required this.price,
  //     required this.name})
  //     : super(key: key);

  // get index => imageList[index];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),
                      );
                    },
                    child: Container(
                        child: Icon(Icons.arrow_back_ios_new_rounded))),
                Container(child: Icon(Icons.share)),
              ],
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 229,
                height: 351,
                child: Image(
                    image: NetworkImage(
                        "https://assets2.andaazfashion.com/media/catalog/product/cache/1/image/a12781a7f2ccb3d663f7fd01e1bd2e4e/z/a/zardosi-embroidered-banarasi-silk-peacock-blue-saree-sarv113916-1.jpg")),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        imageList[0].name,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      child: Text(
                        imageList[0].price,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child: Text(
                    "Sela saree",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text("Color", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  child:
                      Text("No color avaible", style: TextStyle(fontSize: 16)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                      "This is new Tapeta sela sraree in kavyasaree shope.tapeta saree in green color. light wight, with new patten.",
                      style: TextStyle(fontSize: 10)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 53,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                          color: Color(0xffF2789F),
                          //border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                          child: Text("Add to cart",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black54))),
                    ),
                    Container(
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Color(0xffF2789F),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        fixedColor: Color(0xffF2789F),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'User',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite_border_outlined),
          //   label: 'like',
          // ),
        ],
      ),
    );
  }
}




//  Card(
//         elevation: 2,
//         child: Container(
//           height: 400,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: NetworkImage(imageList[1].img), fit: BoxFit.cover),
//           ),
//         ),
//       ),
