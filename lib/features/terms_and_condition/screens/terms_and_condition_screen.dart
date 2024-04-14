import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_widget.dart';

class TearmsAndConditionScreen extends ConsumerStatefulWidget {
  const TearmsAndConditionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TearmsAndConditionScreenState();
}

class _TearmsAndConditionScreenState
    extends ConsumerState<TearmsAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEBED),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                ),
                GButton(
                  icon: Icons.shopping_basket,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'About Us',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Profile',
                )
              ]),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Terms And Conditions',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 22, 8),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ListDrawerWidget()));
              },
              onTapCancel: () {
                print('Profile list drawer cancelled');
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/profile.avif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 50, 22, 5),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.23,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: ExpansionTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          initiallyExpanded: false,
                          title: Text('General'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'content',
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: ExpansionTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          initiallyExpanded: false,
                          title: Text('Common'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'content',
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: ExpansionTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          textColor: Colors.black,
                          backgroundColor: Colors.white,
                          initiallyExpanded: false,
                          title: Text('Other'),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'content',
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
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
      ),
    );
  }
}
