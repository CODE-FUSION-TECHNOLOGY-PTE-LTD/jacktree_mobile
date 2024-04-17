import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_widget.dart';

class MyListingScreen extends ConsumerStatefulWidget {
  const MyListingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyListingScreenState();
}

class _MyListingScreenState extends ConsumerState<MyListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAEBED),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 8, 22, 2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 80, // Increased height to accommodate two text lines
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Honda Civic',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Year: 2023',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              Text(
                                '\$800',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
