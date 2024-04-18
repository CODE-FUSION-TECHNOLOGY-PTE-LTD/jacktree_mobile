import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_widget.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final userProfileKey = GlobalKey<FormState>();
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
                      height: MediaQuery.of(context).size.height * 0.3,
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

                  // Positioned Container
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/profile.avif'),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.30,
                    left: MediaQuery.of(context).size.width * 0.56,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //form
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 16, 22, 1),
              child: Form(
                key: userProfileKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Name',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                          // controller: loginEmailauthController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a your name.';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Last Name',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                          // controller: loginEmailauthController,
                          decoration: const InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a your last name.';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Email',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                          // controller: loginEmailauthController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a your email.';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Mobile',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                          // controller: loginEmailauthController,
                          decoration: const InputDecoration(
                            labelText: 'Mobile',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a mobile number.';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'City',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                          // controller: loginEmailauthController,
                          decoration: const InputDecoration(
                            labelText: 'City',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a your City.';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Age',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                          // controller: loginEmailauthController,
                          decoration: const InputDecoration(
                            labelText: 'Age',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: EdgeInsets.only(left: 20),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a Age.';
                            }
                            return null;
                          }),
                    ),

                    //elevated button
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                        ),
                        child: Text(
                          'Update Profile',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                    )
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
