
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
