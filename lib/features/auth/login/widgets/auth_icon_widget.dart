import 'package:flutter/material.dart';

class AuthIconWidget extends StatelessWidget {
  const AuthIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              children: [
                Image.asset(
                  'assets/logo-wight-lk.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                Text('JackTree', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  height: 0.5,
                ),
                Text('Free Adds', style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
