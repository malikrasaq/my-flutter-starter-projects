import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottonContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111338);

enum Gender {
  male,
  female,
}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

 @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;


  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children:  [
                 Expanded(
                  child: GestureDetector(
                    onTap: () {
                     setState(() {
                       updateColor(Gender.male);
                     });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: const IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                    ),
                  ),
                ), 
                Expanded(
                  child:  GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: const IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                    ),
                  ),
                ),
              ],
            ),
          ),
            const Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child:  ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: bottonContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
          ),
        ],
      ),
    );
  }
}




