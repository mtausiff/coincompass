import 'package:flutter/material.dart';

Image appLogoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fill,
    width: 30,
    height: 30,
    //color: Colors.black,
  );
}