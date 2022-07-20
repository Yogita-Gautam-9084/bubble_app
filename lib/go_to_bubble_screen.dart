import 'package:bubble_app/constants/colors_constants.dart';
import 'package:bubble_app/constants/icons_constants.dart';
import 'package:bubble_app/constants/string_constants.dart';
import 'package:flutter/material.dart';

class GoToBubbleScreen extends StatefulWidget {
  const GoToBubbleScreen({Key? key}) : super(key: key);

  @override
  State<GoToBubbleScreen> createState() => _GoToBubbleScreenState();
}

class _GoToBubbleScreenState extends State<GoToBubbleScreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (index) => setState(() => _currentindex = index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Direction',
              icon: Icon(IconsConstants.direction),
            ),
            BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(IconsConstants.like),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: Icon(IconsConstants.message),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(IconsConstants.profile),
            ),
          ],
          selectedItemColor: ColorsConstants.orange,
          unselectedItemColor: ColorsConstants.grey,
          iconSize: 30,
          elevation: 5),
      backgroundColor: ColorsConstants.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      IconsConstants.arrow,
                      color: ColorsConstants.grey,
                    ),
                  ),
                  Text(
                    StringConstants.explore,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                StringConstants.congrats,
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/celebrationImg.png'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                StringConstants.accountHolder,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorsConstants.orange),
                child: const Text(
                  StringConstants.goToBuddee,
                  style: TextStyle(
                      color: ColorsConstants.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
