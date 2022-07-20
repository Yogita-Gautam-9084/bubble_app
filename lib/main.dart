import 'package:bubble_app/go_to_bubble_screen.dart';
import 'package:bubble_app/liked_in_premium.dart';
import 'package:bubble_app/payment_screen.dart';
import 'package:flutter/material.dart';

import 'choose_plan_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChoosePLanScreen(),
       // home: const PaymentScreen(),
      // home: const GoToBubbleScreen(),
      // home: const LikedInPremium(),
    );
  }
}
