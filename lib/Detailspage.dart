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
      body: Center(
        child: Text(title),
      ),
    );
  }
}
