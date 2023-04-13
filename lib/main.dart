import 'dart:math';

import 'package:dice_app/utils/imagepath.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayImage = imagePath + i2;

  int d1 = 1;
  int d2 = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    Random r = Random();

    d1 = r.nextInt(6) + 1;
    d2 = r.nextInt(6) + 1;
    int sum = d1 + d2;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              "${imagePath + diceBg}",
              height: size.height,
              width: size.width,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Spacer(flex: 1),
                Text(
                  "Total Amount $sum",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "${imagePath}$d1.png",
                      height: 150,
                    ),
                    Image.asset(
                      "${imagePath}$d2.png",
                      height: 150,
                    ),
                  ],
                ),
                Spacer(flex: 2),
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(imagePath + dicebtn),
                      const Text(
                        "Roll Dice",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ), // InkWell(
              ],
            ),
            // Image.asset("assets/image/Background.png"),
          ],
        ),
      ),
    );
  }
}
