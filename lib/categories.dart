import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mimi_flags/lists_and_functions.dart';

class Categories extends StatelessWidget {
  final int order;

  Categories(this.order);

  @override
  Widget build(BuildContext context) {
    List<Widget> _getLists(int order) {
      List<Widget> _flags = <Widget>[];
      ListsAndFunctions.fillTheList(
        _flags,
        ListsAndFunctions.lists[order],
        'Details',
      );

      return _flags;
    }

    List<Widget> _flags = _getLists(order);

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      ),
    );
  }
}
