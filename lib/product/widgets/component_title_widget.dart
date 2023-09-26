import 'package:flutter/material.dart';

Text componentTitleWidget(String titleText) {
  return Text(
    titleText,
    style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black
    ),
  );
}
