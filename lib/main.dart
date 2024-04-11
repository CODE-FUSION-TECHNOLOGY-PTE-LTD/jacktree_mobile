import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jack_tree_app/splash_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: const JackTreeApp(),
    ),
  );
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
            ? ThemeData.light().textTheme.copyWith(
                  bodyLarge: const TextStyle(color: Colors.black, fontSize: 16),
                  headlineSmall: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.transactionAmount),
                  headlineMedium: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.transactionAmount),
                  bodyMedium: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  bodySmall: const TextStyle(
                      color: Color.fromARGB(255, 192, 188, 188), fontSize: 10),
                  //button text
                  labelLarge: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 0.2,
                    ),
                  ),
                  //logo
                  titleLarge: GoogleFonts.prostoOne(
                    textStyle: const TextStyle(
                      color: Color(0xFFF3AF4A),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  labelSmall: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //Link Color
                  labelMedium: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                      color: Color(0xFFF3AF4A),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  // Auth headin texts large
                  displayLarge: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                    ),
                  ),
                  // Auth headin texts small
                  displaySmall: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      letterSpacing: 0.2,
                    ),
                  ),
                  displayMedium: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            : ThemeData.dark().textTheme.copyWith(
                  bodyLarge: const TextStyle(color: Colors.white),
                  headlineSmall: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.transactionAmount),
                  headlineMedium: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.transactionAmount),
                  bodyMedium: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  bodySmall: const TextStyle(
                      color: Color.fromARGB(255, 192, 188, 188), fontSize: 10),
                  //button text
                  labelLarge: GoogleFonts.robotoFlex(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 0.2,
                    ),
                  ),
                  //logo
                  titleLarge: GoogleFonts.prostoOne(
                    textStyle: const TextStyle(
                      color: Color(0xFFF3AF4A),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Auth headin texts large
                  displayLarge: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2,
                    ),
                  ),
                  // Auth headin texts small
                  displaySmall: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      letterSpacing: 0.2,
                    ),
                  ),
                  displayMedium: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  labelSmall: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

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
