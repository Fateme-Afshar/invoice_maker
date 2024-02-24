import 'package:flutter/material.dart';

// Include the Google Fonts package to provide more text format options
// https://pub.dev/packages/google_fonts
import 'package:invoice_maker/sign-in/SignInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'Custom Themes';

    return MaterialApp(
      title: appName,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 0, 128),
          primary: const Color.fromARGB(255, 0, 0, 128),
          primaryContainer: Color.fromARGB(255, 255, 127, 80),
          secondary: const Color.fromARGB(255, 0, 0, 128),
          secondaryContainer: const Color.fromARGB(255, 255, 127, 80),
          background: Color.fromARGB(255, 250, 249, 246),
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          displayLarge:  TextStyle(
            fontFamily: "segoe",
              fontSize: 72,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 47, 79, 79)),
          displayMedium: TextStyle(
            fontFamily: "segoe",
            fontSize: 25,
            color: Color.fromARGB(255, 47, 79, 79)
          ),
          displaySmall: TextStyle(
            fontFamily: "segoe",
            fontSize: 25,
            color: Color.fromARGB(255, 47, 79, 79)
        ),
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignInPage();
  }

}
