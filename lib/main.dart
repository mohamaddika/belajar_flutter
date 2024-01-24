import 'package:belajar/column_widget.dart';
import 'package:belajar/container_widget.dart';
import 'package:belajar/latihan1.dart';
import 'package:belajar/latihan2.dart';
import 'package:belajar/latihan3.dart';
import 'package:belajar/row_column.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("Muhamaddika"),
        ),
        body: latihan3(),
      ),
    );
  }
}

class NewRow extends StatelessWidget {
  const NewRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BelajarContainer();
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hallo Andika Ganteng...\nHallo Juga Mimin...",
        style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
    );
  }
}