import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mimi_flags/lists_and_functions.dart';
import 'package:mimi_flags/photo_detail.dart';

class Categories extends StatelessWidget {
  final int order;

  Categories(this.order);

  @override
  Widget build(BuildContext context) {
    List<Widget> _getLists(int order) {
      List<Widget> _flags = <Widget>[];
      for (String assetName in ListsAndFunctions.lists[order]) {
        _flags.add(
          SvgPicture.asset(
            'images/$assetName.svg',
          ),
        );
      }
      return _flags;
    }

    List<Widget> _flags = _getLists(order);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: /*Color(0x44000000),*/ Colors.transparent,
        leading: BackButton(color: Colors.blueGrey),
        elevation: 0,
        centerTitle: true,
        title: Text(
          ListsAndFunctions.titles[order],
          style: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: _flags.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                // ListsAndFunctions.calculateCrossAxisCount(context),
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 3
                    : 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: AspectRatio(
                            aspectRatio: 3.0 / 2.0,
                            child: _flags[index],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
                            child: Center(
                              child:
                                  /*FittedBox(
                                fit: BoxFit.fitWidth,
                                child:*/
                                  Text(
                                ListsAndFunctions.lists[order][index]
                                    .replaceAll(
                                        "Aland Islands", "Åland Islands")
                                    .replaceAll("Curacao", "Curaçao")
                                    .replaceAll("Cote d'Ivoire (Ivory Coast)",
                                        "Côte d'Ivoire (Ivory Coast)")
                                    .replaceAll("Reunion", "Réunion")
                                    .replaceAll(
                                        "Saint Barthelemy", "Saint Barthélemy")
                                    .replaceAll("Sao Tome and Principe",
                                        "São Tomé and Príncipe"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1,
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0,
                                ),
                              ),
                              /*),*/
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhotoDetail(
                        _flags[index],
                      ),
                    ));
              },
            );
          }),
    );
  }
}
