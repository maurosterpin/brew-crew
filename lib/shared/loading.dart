import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#141518"),
      child: Center(
        child: SpinKitChasingDots(
          color: HexColor("#141518"),
          size: 50.0,
          ),
        ),
    );
  }
}