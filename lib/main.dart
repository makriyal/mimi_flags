import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mimi_flags/categories.dart';
import 'lists_and_functions.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiMi',
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
    for (String assetName in ListsAndFunctions.assetNames) {
      _flags.add(
        kIsWeb
            ? Image.network(
                "https://flagcdn.com/w160/ax.webp",
              )
            : SvgPicture.asset(
                'images/$assetName.svg',
              ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return createGridView(
            8,
            6,
          );
        } else if (constraints.maxWidth > 800) {
          return createGridView(
            5,
            4,
          );
        } else {
          return createGridView(
            3,
            2,
          );
        }
      },
    );
  }

  Widget createGridView(int landscape, int portrait) {
    return GridView.builder(
      itemCount: ListsAndFunctions.assetNames.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.landscape
                ? landscape
                : portrait,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(
            8.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: ListsAndFunctions.getColor(
                index,
              ),
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: GestureDetector(
              child: _flags[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Categories(
                      index,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
