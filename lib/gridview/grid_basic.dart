import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

    @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double appBarHeight = kToolbarHeight;
    final double paddingTop = mediaQueryData.padding.top;
    final double paddingBottom = mediaQueryData.padding.bottom;
    final double heightScreen =
        mediaQueryData.size.height - paddingBottom - paddingTop - appBarHeight;

    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen / heightScreen,
          children: <Widget>[
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.pink,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
