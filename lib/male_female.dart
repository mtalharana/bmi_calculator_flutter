// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class male_female extends StatelessWidget {
  final IconData icon;
  final String label;
  male_female({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: klabeltextstyle,
        )
      ],
    );
  }
}
