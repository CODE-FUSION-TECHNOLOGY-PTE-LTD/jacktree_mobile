import 'package:flutter/material.dart';
import 'package:jack_tree_app/features/auth/login/widgets/auth_icon_widget.dart';

class ForgotPasswordMainScreen extends StatelessWidget {
  ForgotPasswordMainScreen({super.key});

  final TextEditingController forgotPwdEmailauthController =
      TextEditingController();
  final forgotpwdFormKeyAuth = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AuthIconWidget(),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.1, 0, 2, 0),
                          child: Column(
                            children: [
                              Text(
                                'Forgot Password!',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.08),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * 0.1,
                                0,
                                2,
                                0),
                            child: Column(
                              children: [
                                Text(
                                  'Please Enter your Email Address',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Form fields

                //email
                Form(
                  key: forgotpwdFormKeyAuth,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100], // Set gray background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                            controller: forgotPwdEmailauthController,
                            decoration: const InputDecoration(
                              labelText: 'Enter Your Email.',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              prefixIcon: Opacity(
                                opacity: 0.5,
                                child: Icon(Icons.email_outlined),
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty ||
                                  !value.contains('@')) {
                                return 'Please enter a valid email address.';
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                          ),
                          child: Text('Send',
                              style: Theme.of(context).textTheme.labelLarge),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                          ),
                          child: Text('Back',
                              style: Theme.of(context).textTheme.labelLarge),
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
    );
  }
}
