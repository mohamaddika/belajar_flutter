import 'package:flutter/material.dart';

class BelajarListSoarated extends StatelessWidget {
  BelajarListSoarated({super.key});

  final List<Color> colorList = [
    Colors.red, 
    Colors.green, 
    Colors.blueAccent,
    Colors.purple,
    Colors.pink,   
    ];
  final List<String> textList = [
    "Partai PDIP",
    "Partai Ayo Hijaukan Dunia",
    "Partai Muhamaddika",
    "Partai Mana sokk",
    "Partai Om Kukuh"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        itemCount: colorList.length,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 200,
            color: colorList[index],
            child: Center(
            child: Text(textList[index]),
            )
          );
        },
      ),
    );
  }
}
