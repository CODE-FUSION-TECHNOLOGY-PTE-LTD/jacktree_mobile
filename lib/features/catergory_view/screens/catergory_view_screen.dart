import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_widget.dart';

class CatergoryViewScreen extends ConsumerStatefulWidget {
  const CatergoryViewScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CatergoryViewScreenState();
}

class _CatergoryViewScreenState extends ConsumerState<CatergoryViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF2F6A6D).withOpacity(0.75),
                        ),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
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
                                      builder: (context) =>
                                          ListDrawerWidget()));
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
                    //image

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.25,
                      left: MediaQuery.of(context).size.width * 0.10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('assets/cars/car2.webp'),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 150,
                      right: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: [
                              Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 1, 0, 0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage:
                                            AssetImage('assets/profile.avif'),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          1, 16, 2, 1),
                                      child: Column(
                                        children: [
                                          Text('John Smith',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)),
                                          Text('example@gmail.com',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 1, 0, 0),
                                      child: Icon(
                                        Icons.phone,
                                        size: 40,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          1, 16, 2, 1),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                16, 8, 2, 1),
                                            child: Text('+94-75 ********',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              print('mobile');
                                            },
                                            child: Icon(
                                              Icons.visibility_off,
                                              size: 20,
                                              color: Color.fromARGB(
                                                  255, 90, 88, 88),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(6, 1, 0, 0),
                                      child: Icon(
                                        Icons.chat,
                                        size: 40,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          1, 16, 2, 1),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                16, 8, 2, 1),
                                            child: GestureDetector(
                                              onTap: () {
                                                print('chat');
                                              },
                                              child: Text('Chat With Us',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Positioned Container
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.6,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
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
