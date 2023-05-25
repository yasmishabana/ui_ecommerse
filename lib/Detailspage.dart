import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage(
      {required this.img,
      required this.title,
      required this.price,
      required this.context});
  late String img;
  late String title;
  late String price;
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "assets/images/candel$img.jpg",
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          IconButton(
              padding: const EdgeInsets.only(left: 20, top: 30),
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "ILLUM",
                          style: TextStyle(fontSize: 10),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Container(
                              child: Text(
                                "\$$price",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("SIZE", style: TextStyle(fontSize: 10)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "16 OZ",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("QTY", style: TextStyle(fontSize: 10)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                            leading: const Text(
                              "Details",
                              style: TextStyle(fontSize: 16.2),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            )),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                            leading: const Text(
                              "Shipping & Returns",
                              style: TextStyle(fontSize: 16.2),
                            ),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            )),
                        const Divider(
                          thickness: 1.5,
                        ),
                      ],
                    ),
                  )),
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    //  color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          child: Icon(Icons.favorite_border),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 238, 236, 236)),
                              shape: BoxShape.circle),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.pink[100],
                            shape: const StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 6,
                                vertical: 10),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add to Basket",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
