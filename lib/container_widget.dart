import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),

        child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(10)),

        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(50),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration (
            image: DecorationImage (
              image: NetworkImage(
                "https://akcdn.detik.net.id/community/media/visual/2023/09/30/10-meme-uang-yang-kocak-kelakukan-warganet-emang-ajaib-7_43.jpeg?w=300&q="
              )
            )
          ),
        ),
        
      )
      ),
      ),
    );
  }
}
