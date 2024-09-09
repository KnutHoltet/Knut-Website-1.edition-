import 'package:flutter/material.dart';
import 'package:my_app/widgets/header/header.dart';
import 'package:my_app/widgets/body/body.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knut website',
      theme: ThemeData(
        // This is the theme of your application.

        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),

        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Knut Holtet website'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Flavor flavor = catppuccin.mocha;

  @override
  Widget build(BuildContext context) {

    /* TODO
    *   Legg til footer
    *
    * */

    return Scaffold(
      backgroundColor: flavor.base,

      body: const HomeScreen(),


    );
  }
}
