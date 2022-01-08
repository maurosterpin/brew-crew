import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  
  final Function toggleView;
  Register({ required this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  // text field states
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[400],
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0.0,
        title: Text('Sign up'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person), 
            label: Text("Sign In"),
            onPressed: () {
              widget.toggleView();  
            }, 
            ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);   
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: HexColor("#141518"),
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()){
                    print(email);
                    print(password);
                  }
                }
              )
            ],
          ),
        ),
        
      ),
    );
  }
}