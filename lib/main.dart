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
          backgroundColor: Colors.red,
          title: Text("Belajar Flutter"),
        ),
        body: Center(
          child: Text(
            "Hallo Andika Ganteng...\nHallo Juga Mimin...",
            style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
        ),
      ),
    );
  }
}