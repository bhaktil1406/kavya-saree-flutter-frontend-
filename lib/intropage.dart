import "package:flutter/material.dart";

import 'homepge.dart';

class intropage extends StatelessWidget {
  const intropage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFEE3EC),
              Color(0xffF2789F),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      // width: 130,
                      // height: 30,
                      // decoration: BoxDecoration(
                      //     border:
                      //         Border.all(color: Color(0xFFF2789F), width: 2),
                      //     borderRadius: BorderRadius.circular(50)),
                      // child: Center(
                      //   child: Text(
                      //     "SHOP NOW",
                      //     style: TextStyle(
                      //         color: Color(0xFFF2789F),
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15),
                      //   ),
                      // ),
                      child: Icon(
                        Icons.keyboard_double_arrow_right_rounded,
                        color: Color(0xFFF2789F),
                        size: 30,
                      ),
                    ),
                  ),
                  // Container(
                  //   child: Icon(
                  //     Icons.navigate_next,
                  //     color: Color(0xFFF2789F),
                  //     size: 30,
                  //   ),
                  // ),
                  // Container(
                  //   child: Icon(
                  //     Icons.navigate_next,
                  //     color: Color(0xFFF2789F),
                  //     size: 30,
                  //   ),
                  // ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 224,
                  height: 81,
                  child: Image.asset("assets/s.png"),
                ),
                Container(
                  width: 334,
                  height: 91,
                  child: Image.asset("assets/k.png"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Container(
                    height: 508,
                    //height: MediaQuery.of(context).size.height / 1.44,
                    child: Image.asset(
                      "assets/welcome.png",
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
