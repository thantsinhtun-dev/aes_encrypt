import 'package:aes_encrypt/data/models/app_model_impl.dart';
import 'package:aes_encrypt/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'extensions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        appBarTheme: const AppBarTheme(color: Color(0xFF522B7A)),
        bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
      ),
      home: const HomeScreen(),
    );
  }
}

