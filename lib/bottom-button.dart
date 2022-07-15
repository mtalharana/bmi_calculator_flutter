// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, file_names
import 'constants.dart';
import 'package:flutter/material.dart';

class buttombutton extends StatelessWidget {
  buttombutton({required this.onTapped, required this.buttontitle});
  final Function onTapped;
  final String buttontitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped();
      },
      child: Container(
        alignment: Alignment.center,
        color: kbottomcontainercolor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kbottomcontainerheight,
        child: Text(
          buttontitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),
    );
  }
}
