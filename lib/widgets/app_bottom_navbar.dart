import 'package:flutter/material.dart';
BottomNavigationBar bottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.orangeAccent,
    items: const [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'Coins',
        icon: Icon(Icons.currency_rupee),
      ),
      BottomNavigationBarItem(
        label: 'Stats',
        icon: Icon(Icons.query_stats),
      ),
    ],
  );
}