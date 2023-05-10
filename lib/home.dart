import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_ecommerse/Detailspage.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,

        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 179, 178, 178),
                    blurRadius: 20,
                    spreadRadius: 1)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildcontainerBottomnav(Icons.person),
              buildcontainerBottomnav(Icons.shopping_bag),
              buildcontainerBottomnav(Icons.home, isSelected: true),
              buildcontainerBottomnav(Icons.favorite),
              buildcontainerBottomnav(Icons.settings)
            ],
          ),
        ),

        // width: MediaQuery.of(context).size.width,
      ),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        //shadowColor: Color.fromARGB(255, 85, 98, 105),
        leading: Image.asset("assets/images/haburger.png"),

        actions: [
          Container(
              margin: const EdgeInsets.all(9),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(235, 247, 247, 244),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: const [
              SizedBox(width: 16),
              Text("Shop", style: TextStyle(fontSize: 25, letterSpacing: 1)),
              Text(
                " Anthropologie",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedBtn("Home Decore", isSelected: true),
              OutlinedBtn("Bath & Body"),
              OutlinedBtn("Beauty")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 199, 197, 197),
                        spreadRadius: 1,
                        blurRadius: 20)
                  ]),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildColumnAttop("Candles", isSelected: true),
                        buildColumnAttop("Vases"),
                        buildColumnAttop("Bins"),
                        buildColumnAttop("Florel"),
                        buildColumnAttop("Decor")
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return DetailsPage();
                                }));
                              },
                              child: buildcolumnwithrow(
                                  "1", "Elemental Tin Candel", "29")),
                          buildcolumnwithrow("2", "Summer Candel", "23"),
                          buildcolumnwithrow("3", "Winter candel", "40"),
                          buildcolumnwithrow("4", "dummy candel", "60")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 5,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 28),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        height: 5,
                        width: 90,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        children: [
                          Text(
                            "Holiday Special",
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "View All",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildbottomContainer(
                              "1", "Elemental Candel", "17 oz", "29"),
                          buildbottomContainer(
                              "2", "Summer Candel", "20 oz", "23"),
                          buildbottomContainer(
                              "3", "Winter candel", "24 oz", "40"),
                          buildbottomContainer(
                              "4", "dummy candel", "13 oz", "60")
                        ],
                      ),
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

  Container buildcontainerBottomnav(IconData icon, {bool isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.pink[100] : Colors.white,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
              : []),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
    );
  }

  Container buildbottomContainer(
      String img, String title, String oz, String price) {
    return Container(
      //color: Colors.amber,
      height: 150,
      width: 245,
      margin: EdgeInsets.only(left: 25),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    "assets/images/candel$img.jpg",
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 11.2),
                ),
                Text(
                  oz,
                  style: TextStyle(color: Colors.grey, fontSize: 11.2),
                ),
                Spacer(),
                Text(
                  "\$ $price",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding buildcolumnwithrow(String img, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 180,
              width: 140,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/candel$img.jpg",
                    fit: BoxFit.cover,
                  ))),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 11.5),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$ $price ",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Column buildColumnAttop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey, fontSize: 13),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          )
      ],
    );
  }

  OutlinedButton OutlinedBtn(String text, {bool isSelected = false}) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: isSelected ? Colors.pink[200] : Colors.grey[400],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              )),
        ));
  }
}
