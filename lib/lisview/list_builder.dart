import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
   ListBuilder({super.key});

  final List<Color> colorList = [Colors.red, Colors.green, Colors.blueAccent];
  final List<String> textList = ["Partai PDIP", "Partai Ayo Hijaukan Dunia", "Partai Muhamaddika"];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: 200,
                color: colorList[index],
                child: Center(
                  child: Text(textList[index]),
                ),
              );
            },
          ),
       );
  }
}
