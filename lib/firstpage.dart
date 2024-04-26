import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kavyasaree/homepge.dart';

class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEE3EC),
      body: Stack(
        children: [
          Image.asset(
            "assets/main1.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset("assets/Blob.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homepage()),
                        );
                      },
                      child: Container(
                        child: Text(
                          "SKIP",
                          style: TextStyle(
                              color: Color(0xFFF2789F),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
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
              SizedBox(
                height: 130,
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xFFFEE3EC),
                        border: Border.all(color: Color(0xFFF2789F), width: 1),
                        borderRadius: BorderRadius.circular(28)),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Color(0xFFF2789F),
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFFEE3EC),
                        border: Border.all(color: Color(0xFFF2789F), width: 1),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xFFF2789F),
                            fontSize: 17,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
