import 'package:bubble_app/constants/colors_constants.dart';
import 'package:bubble_app/constants/icons_constants.dart';
import 'package:bubble_app/constants/string_constants.dart';
import 'package:bubble_app/payment_screen.dart';
import 'package:flutter/material.dart';

class ChoosePLanScreen extends StatefulWidget {
  const ChoosePLanScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePLanScreen> createState() => _ChoosePLanScreenState();
}

class _ChoosePLanScreenState extends State<ChoosePLanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Direction',
              icon: Icon(Icons.directions),
            ),
            BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(Icons.thumb_up),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: Icon(Icons.messenger_outline),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_circle),
            ),
          ],
          selectedItemColor: ColorsConstants.orange,
          unselectedItemColor: ColorsConstants.grey,
          iconSize: 30,
          elevation: 5),
      backgroundColor: const Color(0xFFECEFF1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        IconsConstants.arrow,
                        color: ColorsConstants.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      StringConstants.getPremium,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    const Text(
                      StringConstants.chooseYourPlan,
                      style: TextStyle(color: ColorsConstants.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                color: ColorsConstants.cyanAccent),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  StringConstants.premium,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                Text(
                                  StringConstants.premiumCost,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: ColorsConstants.white),
                            child: Column(
                              children: const [
                                Text(
                                  StringConstants.discount,
                                  style: TextStyle(
                                      color: ColorsConstants.cyan,
                                      fontSize: 40),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  StringConstants.unlimitedLikes,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: ColorsConstants.blueGrey),
                                ),
                                Divider(
                                  color: ColorsConstants.grey,
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  StringConstants.unlimitedHobbiesListed,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: ColorsConstants.blueGrey),
                                ),
                                Divider(
                                  color: ColorsConstants.grey,
                                  thickness: 1,
                                ),
                                Text(
                                  StringConstants.locationChange,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: ColorsConstants.blueGrey),
                                ),
                                Divider(
                                  color: ColorsConstants.grey,
                                  thickness: 1,
                                ),
                                Text(
                                  StringConstants.yourMessages,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: ColorsConstants.blueGrey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const PaymentScreen() ));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 110, vertical: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorsConstants.orange),
                              child: const Text(
                                StringConstants.choosePlan,
                                style: TextStyle(
                                    color: ColorsConstants.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 240,
                left: 120,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFECEFF1),
                  ),
                  child: const Center(
                    child: Text(
                      StringConstants.perMonth,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
