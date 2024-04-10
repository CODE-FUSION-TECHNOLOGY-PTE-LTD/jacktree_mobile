import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_Widget.dart';

class HomeMainScreen extends ConsumerStatefulWidget {
  const HomeMainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends ConsumerState<HomeMainScreen> {
  int selectedIndex = 0;
  bool showAllgridItems = false;
  bool showAllgridItemsNew = false;

  final List<String> imagePaths = [
    'https://people.com/thmb/fsmp8lHFoKX5FH9JFffcHnE4Qzo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(539x0:541x2)/Popping-Bubbles-1-793efa18dea14eee899ce57412679d2a.jpg',
    'https://www.chewboom.com/wp-content/uploads/2021/07/Sonic-Adds-Ketchup-And-Mayo-To-Cheeseburgers-Calls-Them-%E2%80%98New-And-Improved-678x381.jpg',
    'https://www.restaurantnews.com/wp-content/uploads/2016/10/Wendys-Adds-Swiss-Jr-Bacon-Cheeseburger-to-4-for-4-Meal.jpg',
    'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/01/xbox-game-pass-neon-sign.jpg',
  ];
  final List<String> imagePathsCatergories = [
    'assets/catergories/car.svg',
    'assets/catergories/education.svg',
    'assets/catergories/jobs.svg',
    'assets/catergories/pets.svg',
    'assets/catergories/pets.svg',
    'assets/catergories/education.svg',
    'assets/catergories/pets.svg',
    'assets/catergories/education.svg',
    'assets/catergories/jobs.svg',
    'assets/catergories/education.svg',
  ];
  List<String> names = [
    'Auto Mobile',
    'Education',
    'Jobs',
    'Pets',
  ];
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Stack(
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ListDrawerWidget()));
                              },
                              onTapCancel: () {
                                Navigator.of(context).pop();
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
                    right: -200,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 500, // Adjust width as needed
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imagePaths.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(1.0),
                                  child: Card(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        imagePaths[index],
                                        height: 150,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
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
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Container(
                width: double.infinity,
                height: 75,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePathsCatergories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });

                        print("Selected image index: $index");
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 75,
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SvgPicture.asset(
                                imagePathsCatergories[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            if (selectedIndex != -1 && selectedIndex < names.length)
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 16, 0, 2),
                child: Row(
                  children: [
                    Text(
                      '${names[selectedIndex]}',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            showAllgridItems = !showAllgridItems;
                          });
                        },
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            //catergory list grid
            SizedBox(
              height: 260,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: SizedBox(
                  height: showAllgridItems ? null : null,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: showAllgridItems ? 8 : 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 800,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Image.asset(
                                  'assets/cars/car1.webp',
                                  width: 250,
                                  height: 75,
                                ),
                              ),
                              Text(
                                'Car 01',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Car 01',
                                style: TextStyle(color: Colors.black),
                              ),
                              Container(
                                height: 30,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text('View',
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255))),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            //New listed
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 16, 0, 2),
              child: Row(
                children: [
                  Text(
                    'New Listed',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 22, 0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showAllgridItemsNew = !showAllgridItemsNew;
                        });
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 280,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                child: SizedBox(
                  height: showAllgridItemsNew ? null : null,
                  child: Container(
                    child: ListView.builder(
                      itemCount: showAllgridItemsNew ? 8 : 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/cars/car2.webp',
                                    width: 75,
                                    height: 75,
                                  ),
                                ),
                                Text(
                                  'Car new',
                                  style: TextStyle(color: Colors.black),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '800',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 223, 2, 2)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
