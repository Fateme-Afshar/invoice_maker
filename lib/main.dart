import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:invoice_maker/core/database/appDatabase.dart';
import 'package:invoice_maker/sign-up/sign-up-page.dart';

import 'model/user.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppDatabase.initialDatabase();
  Hive.registerAdapter(UserAdapter());
  runApp(const InvoiceMakerApp());
}

class InvoiceMakerApp extends StatelessWidget {
  const InvoiceMakerApp({super.key});

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
        fontFamily: "segoe",
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color.fromARGB(255, 250, 249, 246),
            hoverColor: Colors.transparent,
            focusColor: null,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 0, 0, 128), width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 0, 0, 128), width: 1),
            ),
            hintStyle: TextStyle(color: Color.fromARGB(189, 47, 79, 79))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 128),
          foregroundColor: const Color.fromARGB(255, 255, 127, 80),
        )),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
              color: Color.fromARGB(255, 47, 79, 79),
              fontSize: 18,
              fontWeight: FontWeight.bold),
          displayLarge: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 47, 79, 79)),
          displayMedium:
              TextStyle(fontSize: 25, color: Color.fromARGB(255, 47, 79, 79)),
          displaySmall:
              TextStyle(fontSize: 25, color: Color.fromARGB(255, 47, 79, 79)),
        ),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpPage();
  }
}
