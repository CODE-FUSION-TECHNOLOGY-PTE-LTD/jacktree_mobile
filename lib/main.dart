import 'package:flutter/material.dart';
import 'package:jack_tree_app/features/splash_screen.dart';

void main() {
  runApp(const JackTreeApp());
}

class JackTreeApp extends StatelessWidget {
  const JackTreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: brightness).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0x0002ae89),
          background: Colors.white,
          surface: const Color(0xFFEAEBED),
          secondary: const Color(0xFFF3AF4A),
        ),
        textTheme: brightness == Brightness.light
            ? ThemeData.light()
                .textTheme
                .copyWith(bodyLarge: const TextStyle(color: Colors.white))
            : ThemeData.dark()
                .textTheme
                .copyWith(bodyLarge: const TextStyle(color: Colors.white)),

        // ignore: deprecated_member_use
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SpashScreen(),
      ),
    );
  }
}
