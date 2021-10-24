import 'package:flutter/material.dart';

class image extends StatelessWidget {
  final String _assetPath;
  image(this._assetPath);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
      _assetPath,
      fit: BoxFit.cover,
    ));
  }
}
