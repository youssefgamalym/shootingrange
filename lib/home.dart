import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/background.jpg"), fit: BoxFit.cover)),
        // color: Colors.indigo,
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: 300,
                height: 250,
                child: Image.asset('image/download.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'shooting');
                  },
                  child: Text('continue')),
            ),
          ],
        ),
      ),
    );
  }
}
