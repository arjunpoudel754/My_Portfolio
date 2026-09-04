import 'package:flutter/material.dart';
import 'package:my_portfolio2/pages/home_page.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Soe Myint",

      home: const HomePage(),
    );    
  }
}