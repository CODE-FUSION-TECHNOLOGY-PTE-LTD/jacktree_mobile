import 'package:flutter/material.dart';
import 'package:jack_tree_app/features/home/widget/list_drawe_widget.dart';

class PaymentViewScreen extends StatefulWidget {
  const PaymentViewScreen({super.key});

  @override
  State<PaymentViewScreen> createState() => _PaymentViewScreenState();
}

class _PaymentViewScreenState extends State<PaymentViewScreen> {
  final List<String> imagePaths = [
    'https://streetfins.com/wp-content/uploads/2020/12/debt-vs-credit-11.jpg',
    'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2022/04/22/1567628-fotojet-2022-04-22t175941.729.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIWRVzdf1EATBX-Sa0b7U0gf5pO-RtrqPMGK3Ekegtvpt8Ruyy8i822MO8TkF-2ovcvKU&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  top: 150,
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
            padding: const EdgeInsets.fromLTRB(26, 50, 22, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Selecterd package Name',
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Selecterd package data,Selecterd package data,Selecterd package data',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Selecterd package data,Selecterd package data,Selecterd package data',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Selecterd package data,Selecterd package data,Selecterd package data',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      ' Amount :',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                      ' \$200',
                      style: TextStyle(color: Colors.red, fontSize: 24),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                    color: Theme.of(context).colorScheme.secondary, width: 2),

                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                shadowColor: Theme.of(context).colorScheme.secondary,

                backgroundColor:
                    Theme.of(context).colorScheme.primary, // Change hover color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.payment,
                    color: Colors.white,
                  ), // Add icon before text
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Pay',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
