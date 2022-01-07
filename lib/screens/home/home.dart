import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[700],
      appBar: AppBar(
        title: Text('Kriya'),
        backgroundColor: HexColor("#141518"),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            }, 
            icon: Icon(Icons.person, color: Colors.white,), 
            label: Text("logout", style: TextStyle(color: Colors.white),),
            
            )
        ]
      ),
    );
  }
}