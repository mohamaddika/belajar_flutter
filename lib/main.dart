import 'package:belajar/container_widget.dart';
import 'package:belajar/gridview/grid_basic.dart';
import 'package:belajar/gridview/grid_builder.dart';
import 'package:belajar/gridview/grid_count.dart';
import 'package:belajar/gridview/tugas_grid1.dart';
import 'package:belajar/latihan1.dart';
import 'package:belajar/latihan3.dart';
import 'package:belajar/lisview/list_basic.dart';
import 'package:belajar/lisview/list_builder.dart';
import 'package:belajar/lisview/tugas1.dart';
import 'package:belajar/screens/home.dart';
import 'package:belajar/screens/menu_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",

      initialRoute: '/',
      routes: {
        '/': (context) => NavigationMenu(),
        'second' :(context) => SecondScreen(),
        'third' :(context) => ThirdScreen()
      },
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
