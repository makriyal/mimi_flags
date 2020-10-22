import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
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
      title: kIsWeb ? 'MiMi Researches Flags' : 'MiMi RF',
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
    /*for (String assetName in ListsAndFunctions.assetNames) {
      _flags.add(
        kIsWeb
            ? Image.network(
                "https://raw.githubusercontent.com/makriyal/mimi_flags/master/images/$assetName.png",
              )
            : SvgPicture.asset(
                'images/$assetName.svg',
              ),
      );
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return ListsAndFunctions.layoutBuilder(
      ListsAndFunctions.assetNames.length,
      _flags,
      "Categories",
      null,
    );
    /*LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return createGridView(
            6,
          );
        } else if (constraints.maxWidth > 800) {
          return createGridView(
            5,
          );
        } else {
          return createGridView(
            4,
          );
        }
      },
    );*/
  }

  // Widget createGridView(int count /*int landscape, int portrait*/) {
  //   return GridView.builder(
  //     itemCount: ListsAndFunctions.assetNames.length,
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount:
  //           MediaQuery.of(context).orientation == Orientation.landscape
  //               ? count
  //               : count - 2,
  //       childAspectRatio: 3 / 2,
  //     ),
  //     itemBuilder: (context, index) {
  //       return Padding(
  //         padding: EdgeInsets.all(
  //           8.0,
  //         ),
  //         child: Container(
  //           decoration: BoxDecoration(
  //             color: ListsAndFunctions.getColor(
  //               index,
  //             ),
  //             borderRadius: BorderRadius.circular(
  //               16,
  //             ),
  //           ),
  //           child: GestureDetector(
  //             child: _flags[index],
  //             onTap: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => Categories(
  //                     index,
  //                   ),
  //                 ),
  //               );
  //             },
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
