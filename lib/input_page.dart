import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { female, male }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;

  @override
  void initState() {
    super.initState();
  }

  changeGender(Gender setgender) {
    print("change Gender $setgender");
    // setState(() {
    //   selectedgender = setgender;
    // });
  }

  setGender() {
    print("set Gender");
    // setState(() {
    //   selectedgender = setgender;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () => changeGender(Gender.male),
                    colour: selectedgender == Gender.male ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    // onPress: () => changeGender(Gender.female),
                    onPress: () {
                      print("SET");
                      // changeGender(Gender.female);
                      // setState(() {
                      //   selectedgender = Gender.female;
                      // });
                    },
                    colour: selectedgender == Gender.female ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor, cardChild: Text("WWW")),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activeCardColor)),
                Expanded(child: ReusableCard(colour: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: Text("dsss"),
          ),
        ],
      ),
    );
  }
}
