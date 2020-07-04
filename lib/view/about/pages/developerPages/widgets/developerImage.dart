import 'package:flutter/material.dart';

/// needs to ave linear gradient at the bottom
Widget imageDeveloper() {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromRGBO(53, 38, 65, 3.0),
      image: DecorationImage(
        image: AssetImage("assets/danis2.jpg"),
        fit: BoxFit.contain,
      ),
    ),
  );
}