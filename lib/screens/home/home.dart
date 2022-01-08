import 'package:brew_crew/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:brew_crew/services/database.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/screens/home/brew_list.dart';
import 'package:brew_crew/models/brew.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Iterable<Brew>?>.value(
      initialData: null,
      value: DatabaseService(uid: '').brews,
      child: Scaffold(
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
        body: BrewList(),
      ),
    );
  }
}