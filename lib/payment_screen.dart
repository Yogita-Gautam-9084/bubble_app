import 'package:bubble_app/constants/colors_constants.dart';
import 'package:bubble_app/constants/icons_constants.dart';
import 'package:bubble_app/constants/string_constants.dart';
import 'package:flutter/material.dart';

import 'go_to_bubble_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEFF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsConstants.orange),
                    child: const Icon(
                      IconsConstants.check,
                      color: ColorsConstants.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    StringConstants.unlimitedLikes,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsConstants.orange),
                    child: const Icon(
                      IconsConstants.check,
                      color: ColorsConstants.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    StringConstants.unlimitedHobbiesListed,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsConstants.orange),
                    child: const Icon(
                      IconsConstants.check,
                      color: ColorsConstants.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Text(
                      StringConstants.locationChange,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsConstants.orange),
                    child: const Icon(
                      IconsConstants.check,
                      color: ColorsConstants.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    StringConstants.seeLikeProfiles,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsConstants.orange),
                    child: const Icon(
                      IconsConstants.check,
                      color: ColorsConstants.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Text(
                      StringConstants.yourMessages,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                StringConstants.chooseYourPlan,
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                child: const Text("Show Bottom Sheet"),
                onPressed: () {
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 330,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(IconsConstants.apple),
                                  Text(
                                    StringConstants.pay,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Spacer(),
                                  Text(
                                    StringConstants.cancel,
                                    style: TextStyle(
                                        color: ColorsConstants.red,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                // indent: 10,
                                color: ColorsConstants.grey,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/visa.png',
                                      height: 40,
                                      width: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          StringConstants.visa,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          StringConstants.code,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const GoToBubbleScreen() ));
                                      },
                                      child: const Icon(
                                        IconsConstants.arrowForward,
                                        color: ColorsConstants.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 1,
                                color: ColorsConstants.grey,
                              ),
                              Row(
                                children:const [
                                  Text(
                                    StringConstants.payGuacamole,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    StringConstants.payAmount,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                color: ColorsConstants.grey,
                              ),
                              Column(
                                children: [
                                  Image.asset('assets/img.png',height: 100,width: 30,),
                                  const Text(StringConstants.confirmWith,style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
