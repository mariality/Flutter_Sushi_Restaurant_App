import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/shop.dart';
import 'pages/cart_page.dart';
import 'pages/into_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child:  const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
