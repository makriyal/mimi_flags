import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:mimi_flags/lists_and_functions.dart';
import 'package:mimi_flags/photo_detail.dart';
//import 'package:flutter/foundation.dart' show kIsWeb;

class Categories extends StatelessWidget {
  final int order;
  //int order;

  Categories(this.order);
  //Categories();

  @override
  Widget build(BuildContext context) {
    List<Widget> _getLists(int order) {
      List<Widget> _flags = <Widget>[];
      ListsAndFunctions.fillTheList(
        _flags,
        ListsAndFunctions.lists[order],
        'Details',
      );
/*      for (String assetName in ListsAndFunctions.lists[order]) {
        print(assetName);
        print(ListsAndFunctions.codesOfCountries[assetName]);
        _flags.add(kIsWeb
            ? (assetName == "Kurdistan Region"
                ? Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Flag_of_Kurdistan.png/320px-Flag_of_Kurdistan.png",
                  )
                : (assetName == "Turkish Republic of Northern Cyprus"
                    ? Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Flag_of_the_Turkish_Republic_of_Northern_Cyprus.svg/320px-Flag_of_the_Turkish_Republic_of_Northern_Cyprus.svg.png",
                      )
                    : Image.network(
                        "https://flagcdn.com/w320/${ListsAndFunctions.codesOfCountries[assetName].toLowerCase()}.webp",
                      )))
            : SvgPicture.asset(
                'images/$assetName.svg',
              ));
      }*/

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
        body: ListsAndFunctions.layoutBuilder(
          _flags.length,
          _flags,
          "Details",
          order,
        )

/*      GridView.builder(
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
                padding: EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                      16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: AspectRatio(
                            aspectRatio: 3.0 / 2.0,
                            child: _flags[index],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            ListsAndFunctions.lists[order][index]
                                .replaceAll("Aland Islands", "Åland Islands")
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
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
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
          }),*/
        );
  }
}
