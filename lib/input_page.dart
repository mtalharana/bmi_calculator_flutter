// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors, camel_case_types, unused_label

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'male_female.dart';
import 'reuseable_card.dart';

const bottomcontainerheight = 80.0;
const Color activecardcolor = Color(0xff1D1F33);
const Color inactivecardcolor = Color(0xff111328);
const Color bottomcontainercolor = Color(0xffeb1555);

enum Gender { male, female, some }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender = Gender.some;

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
                      onPressed: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      cardcolor: selectedgender == Gender.male
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: male_female(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      onPressed: () {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      },
                      cardcolor: selectedgender == Gender.female
                          ? activecardcolor
                          : inactivecardcolor,
                      cardchild: male_female(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(
                cardcolor: activecardcolor,
                cardchild: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(fontSize: 18, color: Color(0xff8d8e98)),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      cardcolor: activecardcolor,
                      cardchild: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff8d8e98)),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      cardcolor: activecardcolor,
                      cardchild: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff8d8e98)),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
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
