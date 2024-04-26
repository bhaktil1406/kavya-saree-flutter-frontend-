import 'package:flutter/material.dart';
import 'package:kavyasaree/homepge.dart';
import 'package:kavyasaree/intropage.dart';
import 'package:kavyasaree/product_detail.dart';
import 'firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.r
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => intropage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/homescreen': (context) => homepage(),
        // '/profile': (context) => profile(),
      },
    );
  }
}
