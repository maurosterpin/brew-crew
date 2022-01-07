import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[700],
      appBar: AppBar(
        title: Text('Kriya'),
        backgroundColor: HexColor("#141518"),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {}, 
            icon: Icon(Icons.person), 
            label: Text(""),
            
            )
        ]
      ),
    );
  }
}