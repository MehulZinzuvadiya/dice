import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List l1 = [
    "assets/images/dice.png",
    "assets/images/dice (1).png",
    "assets/images/dice (2).png",
    "assets/images/dice (3).png",
    "assets/images/dice (4).png",
    "assets/images/dice (5).png",
    "assets/images/dice (6).png",
  ];
  int i = 0,sum=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("DiceApp"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: Image.asset(
          "assets/images/dice (6).png",
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
                onTap: () {
                  var R = Random();
                  setState(() {
                    i = R.nextInt(6);
                    print("$i");
                    sum=sum+i+1;
                    print("$sum");
                  });
                },
                child: Image.asset(
                  l1[i],
                  height: 100,
                  width: 100,
                )),

          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("$sum",
                style: TextStyle(color: Colors.black, fontSize: 18)),
          ),
        ],
      ),
    ));
  }
}
