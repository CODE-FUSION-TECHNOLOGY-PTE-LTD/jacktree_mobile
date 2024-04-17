import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jack_tree_app/features/about_us/screens/about_us_screen.dart';
import 'package:jack_tree_app/features/contact_us/screens/contact_us_screen.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_widget.dart';
import 'package:jack_tree_app/features/priceing/screens/price_screen.dart';

class PendingApprovelScreen extends ConsumerStatefulWidget {
  const PendingApprovelScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PendingApprovelScreenState();
}

class _PendingApprovelScreenState extends ConsumerState<PendingApprovelScreen> {
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
                  icon: Icons.phone,
                  text: 'Contact Us',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => ContactUsScreen()));
                  },
                ),
                GButton(
                  icon: Icons.people_alt_rounded,
                  text: 'About Us',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => AboutUsScreen()));
                  },
                ),
                GButton(
                  icon: Icons.attach_money,
                  text: 'Prices',
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => PriceViewScreen()));
                  },
                )
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  SizedBox(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                  //icons
                  Positioned(
                    top: 60,
                    right: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('cart press');
                            },
                            onTapCancel: () {
                              print('cart press cancelled');
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                  color: Colors.white.withOpacity(0.8),
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
                      ),
                    ),
                  ),
                  //back button
                  Positioned(
                    top: 60,
                    left: 10,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 8, 8),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            onTapCancel: () {
                              print('cart press cancelled');
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(220, 255, 255, 255),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 180,
                    left: 30,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 16, 0, 0),
                      child: Row(
                        children: [
                          Container(
                            width: 320,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 1,
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 8, 8),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            onTapCancel: () {
                              print('cart press cancelled');
                            },
                            child: Container(
                                width: 100,
                                height: 40,
                                child: Text(
                                  'Pending Approvels',
                                  style: Theme.of(context).textTheme.labelSmall,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 8, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Image',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Details',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Option',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(22, 8, 22, 2),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 80, // Adjust height as needed
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Image.asset('assets/cars/car1.webp'),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(60, 8, 8, 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Honda Civic',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                    Text(
                                      'Year: 2023',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.edit_document,
                                      size: 30,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
