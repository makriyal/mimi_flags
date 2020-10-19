import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoDetail extends StatelessWidget {
  final Widget child;

  PhotoDetail(this.child);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(color: Colors.blueGrey),
        elevation: 0,
      ),
      body: Container(
        child: PhotoView.customChild(
          child: child,
        ),
      ),
    );
  }
}
