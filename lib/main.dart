import 'package:flutter/material.dart';
import 'lists_and_functions.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kIsWeb ? 'MiMi Researches Flags' : 'MiMi RF',
      theme: ThemeData(
        textTheme: GoogleFonts.comfortaaTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final List<Widget> _flags = <Widget>[];

  @override
  void initState() {
    super.initState();
    ListsAndFunctions.fillTheList(
      _flags,
      ListsAndFunctions.assetNames,
      'Categories',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListsAndFunctions.layoutBuilder(
      ListsAndFunctions.assetNames.length,
      _flags,
      "Categories",
      null,
    );
  }
}
