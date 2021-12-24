import 'package:bmi_calculator/Screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_details.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/Bottom_Button.dart';
import '../components/round_icon_button.dart';
import '../components/icon_content.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInActivecard;
  Color femaleCardColor = kInActivecard;
  int Height = 200;
  int weight = 30;
  int Age = 12;

  void updateColor(Gender Selected) {
    if (Gender.male == Selected) {
      maleCardColor = kActiveColor;
      femaleCardColor = kInActivecard;
    } else {
      femaleCardColor = kActiveColor;
      maleCardColor = kInActivecard;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ResusableWidgett(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      colors: maleCardColor,
                      Child: IconContent(
                        gender: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResusableWidgett(
                        onTap: () {
                          setState(() {
                            updateColor(Gender.female);
                          });
                        },
                        colors: femaleCardColor,
                        Child: IconContent(
                          gender: 'Female',
                          icon: FontAwesomeIcons.venus,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ResusableWidgett(
                colors: kActiveColor,
                Child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: labelTextStyle,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Height.round().toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'cm',
                            ),
                          ],
                        ),
                        Slider(
                          value: Height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Colors.red,
                          inactiveColor: Colors.lightBlue,
                          label: Height.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              Height = value.round();
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ResusableWidgett(
                      colors: kActiveColor,
                      Child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: labelTextStyle,
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                child: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              RoundIconButton(
                                child: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResusableWidgett(
                      colors: kActiveColor,
                      Child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: labelTextStyle,
                          ),
                          Text(
                            '$Age',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  child: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                RoundIconButton(
                                  child: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      Age--;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              onTap: () {
                print("hii");
                Calculator cal = Calculator(height: Height, weight: weight);


               print(Age);
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return (ResultsPage(
                      BMI: cal.calculateBmi(),

                      result: cal.GetResult(),

                      interpretation: cal.getInterpretation(),
                    ));
                  }),
                );
              },
              title: "Calculator",
            ),
          ],
        ),
      ),
    );
  }
}
