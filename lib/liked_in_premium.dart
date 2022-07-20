import 'package:bubble_app/constants/colors_constants.dart';
import 'package:bubble_app/constants/icons_constants.dart';
import 'package:bubble_app/constants/string_constants.dart';
import 'package:flutter/material.dart';

class LikedInPremium extends StatefulWidget {
  const LikedInPremium({Key? key}) : super(key: key);

  @override
  State<LikedInPremium> createState() => _LikedInPremiumState();
}

TabController _tabController = _tabController;

class _LikedInPremiumState extends State<LikedInPremium>
    with SingleTickerProviderStateMixin {
  List<String> images = [
    'https://images.unsplash.com/photo-1606406054219-619c4c2e2100?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a29yZWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://data.whicdn.com/images/324934852/original.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReO8BdVtWSe15OZ85KOo7Q79BOxvToLy5HO-q5AqVlb-ebnLErB8RtrFaBMmWH467RQco&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSMfE_yKEbgfA2tr2emUDM55GG-i--jjOmCerq6rCf_36nZ5y7n9z3Il1QZL-XpCp0KHY&usqp=CAU',
    'https://i.pinimg.com/736x/d8/6e/ff/d86eff70985453f665055de67229e8c3.jpg',
    'https://data.whicdn.com/images/324934852/original.jpg',

  ];
  List<String> names = [
    StringConstants.ann,
    StringConstants.jes,
    StringConstants.jeanny,
    StringConstants.ann,
    StringConstants.inga,
    StringConstants.jeanny,

  ];
  int selectedIndex = 0;
  int _currentindex = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

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
                children: [
                  const Icon(
                    IconsConstants.arrow,
                    color: ColorsConstants.grey,
                  ),
                  const Text(
                    StringConstants.explore,
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/threelines.png',
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                StringConstants.likedYou,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TabBar(
                padding: const EdgeInsets.symmetric(vertical: 20),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorsConstants.cyanAccent),
                controller: _tabController,
                labelColor: ColorsConstants.black,
                isScrollable: true,
                indicatorColor: Colors.cyanAccent,
                unselectedLabelColor: Colors.black,
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                unselectedLabelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: <Widget>[
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedIndex == 0
                                ? Colors.transparent
                                : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(StringConstants.all),
                      )),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedIndex == 1
                            ? Colors.transparent
                            : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(StringConstants.badminton),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedIndex == 2
                            ? Colors.transparent
                            : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(StringConstants.photography),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: List.generate(
                          images.length,
                              (index) {
                            return Center(
                              child: _buildCardViewWidget(
                                  imageUrl: images[index], title: names[index]),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: List.generate(
                          images.length,
                              (index) {
                            return Center(
                              child: _buildCardViewWidget(
                                  imageUrl: images[index], title: names[index]),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: List.generate(
                          images.length,
                          (index) {
                            return Center(
                              child: _buildCardViewWidget(
                                  imageUrl: images[index], title: names[index]),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_buildCardViewWidget({required String imageUrl, required String title}) {
  return Padding(
    padding: const EdgeInsets.all(9.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageUrl,
            ),
            width: 120,
            height: 120,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}
