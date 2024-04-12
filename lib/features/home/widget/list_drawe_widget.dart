import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jack_tree_app/features/home/screens/home_main_screen.dart';
import 'package:jack_tree_app/features/terms_and_condition/screens/terms_and_condition_screen.dart';

class ListDrawerWidget extends ConsumerStatefulWidget {
  const ListDrawerWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ListDrawerWidgetState();
}

class _ListDrawerWidgetState extends ConsumerState<ListDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEBED),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: GNav(
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Theme.of(context).colorScheme.secondary,
              curve: Curves.linearToEaseOut,
              tabBorderRadius: 10,
              tabBackgroundColor:
                  Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              gap: 8,
              padding: EdgeInsets.all(16),
              textStyle: TextStyle(
                  color:
                      Colors.black), // the tab button gap between icon and text

              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                GButton(
                  icon: Icons.shopping_basket,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Profile',
                )
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 330,
                child: Stack(
                  children: [
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                        ),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    // profile and Text
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.1,
                      left: MediaQuery.of(context).size.width * 0.2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/profile.avif'),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text('John Smith',
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium),
                              SizedBox(height: 5),
                              Text(
                                'example@gmail.com',
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Positioned Container
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.23,
                      left: MediaQuery.of(context).size.width * 0.08,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(20, 20)),
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('2',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Text('3',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  Text('5',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Ongoing',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 161, 158, 158),
                                          fontWeight: FontWeight.bold)),
                                  Text('Pending',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 161, 158, 158),
                                          fontWeight: FontWeight.bold)),
                                  Text('Approved',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 161, 158, 158),
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 1, 22, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.my_library_add),
                      title: const Text('My Listnings'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the first ListTile
                    ListTile(
                      leading: const Icon(Icons.pending_rounded),
                      title: const Text('Pending Approvels'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the second ListTile
                    ListTile(
                      leading: const Icon(Icons.archive_rounded),
                      title: const Text('Archived Listings'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the third ListTile
                    ListTile(
                      leading: const Icon(Icons.message_rounded),
                      title: const Text('Messengers'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the fourth ListTile
                    ListTile(
                      leading: const Icon(Icons.save_rounded),
                      title: const Text('Saved Search'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the fifth ListTile
                    ListTile(
                      leading: const Icon(Icons.attach_money_rounded),
                      title: const Text('Transactions'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the sixth ListTile
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text('My Account'),
                      onTap: () {},
                    ),
                    Divider(), // Add a Divider after the seventh ListTile
                    ListTile(
                      leading: const Icon(Icons.rule_sharp),
                      title: const Text('Terms And Condition'),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => TearmsAndConditionScreen()));
                      },
                    ),
                    Divider(), // Add a Divider after the seventh ListTile
                    ListTile(
                      leading: const Icon(Icons.logout_rounded),
                      title: const Text('Sign Out'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
