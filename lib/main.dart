import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/home.dart';

void main() {
  runApp(const MyApp());
}

final kColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 28, 17, 46),
  background: const Color.fromARGB(255, 56, 49, 66),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kColorScheme.background,
        useMaterial3: true,
        textTheme: const TextTheme().copyWith(
          titleLarge: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
          titleSmall: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: const HomeScreen(),
    );
  }
}
