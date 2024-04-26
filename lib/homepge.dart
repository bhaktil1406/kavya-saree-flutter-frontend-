import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kavyasaree/firstpage.dart';
import 'package:kavyasaree/product_detail.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import './product_data.dart';

final List<String> imgList = [
  "https://cdn.sareeka.com/image/cache/data/2022/213948-750x340.jpg",
  "https://cdn.sareeka.com/image/cache/data/2022/213948-750x340.jpg",
  "https://cdn.sareeka.com/image/cache/data/2022/213948-750x340.jpg",
  "https://cdn.sareeka.com/image/cache/data/2022/213948-750x340.jpg",
];

class homepage extends StatelessWidget {
  int _selectedIndex = 0;
  // int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: Icon,
        title: Text(
          "Kavya saree",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => firstpage()),
            );
          },
          child: Center(child: Text("LOGIN")),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 33),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         child: Text(
            //           "KAVYA SAREE",
            //           style: TextStyle(fontSize: 20),
            //         ),
            //       ),
            //       Row(
            //         children: [
            //           // Container(
            //           //   child: Icon(Icons.person),
            //           // ),
            //           Container(
            //             child: Icon(
            //               Icons.subject_outlined,
            //               size: 24,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      cursorColor: Color(0xffF2789F),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey.shade500),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.grey.shade500),
                        ),
                        labelText: 'Search',
                        labelStyle: TextStyle(color: Color(0xffF2789F)),
                        fillColor: Color(0xffF2789F),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xffF2789F),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 142,
                        height: 39,
                        decoration: BoxDecoration(
                            color: Color(0xffF2789F),
                            // border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text("All")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 142,
                        height: 39,
                        decoration: BoxDecoration(
                            color: Color(0xffD1CECF),
                            // border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text("Popular")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 142,
                        height: 39,
                        decoration: BoxDecoration(
                            color: Color(0xffD1CECF),
                            // border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text("Recent")),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        width: 142,
                        height: 39,
                        decoration: BoxDecoration(
                            color: Color(0xffD1CECF),
                            // border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(child: Text("Recomended")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 250,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      autoPlayAnimationDuration: Duration(seconds: 3),
                      // onPageChanged: (index, reason) =>
                      //     setState(() => activeIndex = index),
                    ),
                    itemCount: imgList.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = imgList[index];
                      return buildImage(urlImage, index);
                    },
                  ),
                ),
                //buildIndicator(),
              ],
            ),
            new Divider(
              color: Colors.grey,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Recommended saree photos",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => product_detail()),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 0.5,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                        //  primary: false,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.73,
                        ),
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 2,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      //border: Border.all(),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            imageList[index].img.toString()),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        imageList[index].name.toString(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffF2789F)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                          "\u{20B9}${imageList[index].price.toString()}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.end,
                                    //   // crossAxisAlignment: CrossAxisAlignment.start,
                                    //   children: [
                                    //     Container(
                                    //       child: Icon(
                                    //         Icons.favorite,
                                    //         color: Colors.pink,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        fixedColor: Color(0xffF2789F),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ), // Image.network
      );
  // Widget buildIndicator() => AnimatedSmoothIndicator(
  //       activeIndex: activeIndex,
  //       count: imgList.length,
  //       // effect: JumpingDotEffect(
  //       //   dotWidth: 20,
  //       //   dotHeight: 20,
  //       // ), // JumpingDotEffect
  //     );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void setState(Null Function() param0) {}
}
