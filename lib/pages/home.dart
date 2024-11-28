import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var randomnumber = 1;
  String image = "assets/dice-5.png";
  void rollDise() {
    setState(() {
      randomnumber = Random().nextInt(6) + 1;
      image = "assets/dice-$randomnumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.pink])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 200,
            ),
            const SizedBox(
              height: 7,
            ),
            TextButton(
                onPressed: () {
                  rollDise();
                },
                child: const Text(
                  "Click here",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
