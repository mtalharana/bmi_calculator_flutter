// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

const bottomcontainerheight = 80.0;
const Color activecardcolor = Color(0xff1D1F33);
const Color bottomcontainercolor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMIALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      cardcolor: activecardcolor,
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(cardcolor: activecardcolor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(cardcolor: activecardcolor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(cardcolor: activecardcolor),
                  ),
                  Expanded(
                    child: ReuseableCard(cardcolor: activecardcolor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomcontainercolor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomcontainerheight,
            )
          ],
        ),
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.cardcolor});
  final Color cardcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardcolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(15),
    );
  }
}
