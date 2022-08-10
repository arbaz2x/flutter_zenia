import 'package:flutter/material.dart';
import 'package:flutter_zenia/welcome.dart';
import 'package:flutter_zenia/Challenge.dart';
import 'package:flutter_zenia/Profile.dart';
import 'package:flutter_zenia/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final screen =[
      HomeView(),
      Challenge(),
      Profile(),

    ];
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: Welcome(

      ),
    );
  }
}



