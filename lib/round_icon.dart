// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class roundIconButton extends StatelessWidget {
  roundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6,
      child: Icon(icon,
          color: Colors.white, size: 40.0), // ignore: deprecated_member_use
    );
  }
}
