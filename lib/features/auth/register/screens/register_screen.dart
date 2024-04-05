import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jack_tree_app/features/auth/login/widgets/auth_icon_widget.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final registerFormKeyAuth = GlobalKey<FormState>();
  final TextEditingController registerEmailauthController =
      TextEditingController();
  final TextEditingController registerPasswordauthController =
      TextEditingController();
  final TextEditingController registerFirstNameauthController =
      TextEditingController();
  final TextEditingController registerSureNameauthController =
      TextEditingController();
  bool _ispwdVisible = false;

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
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.10),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width * 0.2,
                                0,
                                2,
                                0),
                            child: Column(
                              children: [
                                Text(
                                  'Welcome Back!',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Find Your Favorite Thigs here',
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
                  key: registerFormKeyAuth,
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
                            controller: registerEmailauthController,
                            decoration: const InputDecoration(
                              labelText: 'Enter Your First Name.',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              prefixIcon: Opacity(
                                opacity: 0.5,
                                child: Icon(Icons.people_alt_rounded),
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
                              if (value == null || value.trim().isEmpty) {
                                return 'Please enter a first name.';
                              }
                              return null;
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100], // Set gray background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                            controller: registerEmailauthController,
                            decoration: const InputDecoration(
                              labelText: 'Enter Your Sure Name.',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                              contentPadding: EdgeInsets.only(left: 20),
                              prefixIcon: Opacity(
                                opacity: 0.5,
                                child: Icon(Icons.people),
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
                              if (value == null || value.trim().isEmpty) {
                                return 'Please enter a sure name.';
                              }
                              return null;
                            }),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100], // Set gray background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                            controller: registerEmailauthController,
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
                        height: 20,
                      ),
                      //password field
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100], // Set gray background color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          controller: registerPasswordauthController,
                          obscureText: !_ispwdVisible,
                          decoration: InputDecoration(
                            labelText: 'Enter Your Password.',
                            labelStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                            ),
                            contentPadding: const EdgeInsets.only(left: 20),
                            prefixIcon: const Opacity(
                              opacity: 0.5,
                              child: Icon(Icons.lock_outline),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _ispwdVisible = !_ispwdVisible;
                                });
                              },
                              child: Opacity(
                                opacity: 0.5,
                                child: Icon(
                                  _ispwdVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          textCapitalization: TextCapitalization.none,
                          keyboardType: TextInputType.visiblePassword,
                          style: const TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Password is required.';
                            }

                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long.';
                            }

                            if (!RegExp(r'[A-Z]').hasMatch(value) ||
                                !RegExp(r'[a-z]').hasMatch(value) ||
                                !RegExp(r'[0-9]').hasMatch(value) ||
                                !RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                                    .hasMatch(value)) {
                              return "Password: 8+ chars, mix of letters, numbers & symbols.";
                            }

                            return null;
                          },
                        ),
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
                          child: Text('Sign Up',
                              style: Theme.of(context).textTheme.labelLarge),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Already Have Account?',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Login Now',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
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
