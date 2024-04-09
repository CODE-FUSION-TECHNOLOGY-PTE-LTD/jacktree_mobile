import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeMainScreen extends ConsumerStatefulWidget {
  const HomeMainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends ConsumerState<HomeMainScreen> {
  final List<String> imagePaths = [
    'assets/cars/car1.webp',
    'assets/cars/car2.webp',
    'assets/cars/car3.webp',
    'assets/cars/car4.webp',
  ]; // List of image paths
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -90,
            right: -20,
            child: Container(
              width: 580,
              height: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF3AF4A),
              ),
            ),
          ),
          Positioned(
            top: -100,
            left: -200,
            child: Container(
              width: 700,
              height: 360,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: -140,
            left: 30,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF3AF4A),
              ),
            ),
          ),
          // Text
          Positioned(
            top: 60,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 0, 0),
              child: Text('Explore the Free Adds\nin JackTree',
                  style: Theme.of(context).textTheme.displayMedium),
            ),
          ),
          // Icons
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
                        print('Profile list drawer');
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
              ),
            ),
          ),
          //search box
          Positioned(
            top: 120,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 0, 0),
              child: Row(
                children: [
                  Container(
                    width: 320,
                    height: 40,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
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
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.add,
                          color: const Color(0xFFF3AF4A).withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //adds

          Positioned(
            top: 200,
            right: -80,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                children: [
                  Container(
                      height: 150,
                      width: 400, // Adjust width as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imagePaths.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Card(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  imagePaths[index],
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}