// ignore_for_file: camel_case_types, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, prefer_const_constructors_in_immutables
// ignore:
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'input_page.dart';
import 'bottom-button.dart';

class result extends StatelessWidget {
  result(
      {required this.bmi,
      required this.resulttext,
      required this.interpretation});

  final String bmi;
  final String resulttext;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                cardcolor: kactivecardcolor,
                cardchild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      bmi.toUpperCase(),
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Text(
                      resulttext.toUpperCase(),
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            buttombutton(
                onTapped: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InputPage();
                      },
                    ),
                  );
                },
                buttontitle: 'Re Calculate')
          ]),
    );
  }
}
