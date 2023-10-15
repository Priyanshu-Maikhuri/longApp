import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:longapp/screen/login.dart';

import '../screen/home.dart';
import 'Resources/RoutesManger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
    print("Success");
  } catch (e) {}

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
      onGenerateRoute: RouteGenerator.getRoute,
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
      home: const Login(),
    );
  }
}
