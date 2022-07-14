// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {required this.cardcolor,
      required this.cardchild,
      required this.onPressed});
  final Color cardcolor;
  final Widget cardchild;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
            color: cardcolor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.all(15),
          child: cardchild),
    );
  }
}
