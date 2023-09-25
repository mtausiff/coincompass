import 'package:flutter/material.dart';

class CoinStyledListTile extends StatelessWidget {
  final int index;
  final String title, body, imagePath;

  const CoinStyledListTile({ super.key, required this.index, required this.title, required this.body, required this.imagePath });

  @override
  Widget build(BuildContext context) {

    return ListTile(
      //leading: Text('${index+1}', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),), //display username or customer photo
      leading: const CircleAvatar(
        //backgroundColor: Colors.lightGreen,
        backgroundImage: AssetImage('assets/app_logo.png'),
        maxRadius: 28,
      ),
      title: Text("${index + 1}. ${title}", style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      subtitle: Text(body),
      trailing: Icon(Icons.menu),
    );
  }
}
