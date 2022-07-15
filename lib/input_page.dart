// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors, camel_case_types, unused_label

import 'package:bmi_calculator_flutter/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'male_female.dart';
import 'reuseable_card.dart';
import 'constants.dart';
import 'result.dart';

enum Gender { male, female, some }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender = Gender.some;
  int slidervalue = 180;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMIALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          ? kactivecardcolor
                          : kinkactivecardcolor,
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
                          ? kactivecardcolor
                          : kinkactivecardcolor,
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
                onPressed: () {},
                cardcolor: kactivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Text('Height', style: klabeltextstyle),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          slidervalue.toString(),
                          style: knumbertextstyle,
                        ),
                        Text(
                          'cm',
                          style: klabeltextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xff8d8e98),
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 12.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 27.0,
                        ),
                      ),
                      child: Slider(
                        value: slidervalue.toDouble(),
                        onChanged: (double newvalue) {
                          setState(() {
                            slidervalue = newvalue.round();
                          });
                        },
                        min: 120,
                        max: 220,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      cardcolor: kactivecardcolor,
                      cardchild: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: klabeltextstyle,
                            ),
                            Text(
                              weight.toString(),
                              style: knumbertextstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                roundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                SizedBox(width: 10),
                                roundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                              ],
                            ),
                          ]),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      cardcolor: kactivecardcolor,
                      cardchild: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Text(
                              'Age',
                              style: klabeltextstyle,
                            ),
                            Text(
                              age.toString(),
                              style: knumbertextstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                roundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                                SizedBox(width: 10),
                                roundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ]),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => result()));
              },
              child: Container(
                alignment: Alignment.center,
                color: kbottomcontainercolor,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 20),
                width: double.infinity,
                height: kbottomcontainerheight,
                child: Text(
                  'CALCULATE YOUR BMI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
