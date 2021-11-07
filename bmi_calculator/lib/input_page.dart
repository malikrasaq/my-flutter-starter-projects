import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottonContainerColor = Color(0xFFEB1555);
const activeColorCard = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: const [
                 Expanded(
                  child: ReusableCard(
                    color:  activeColorCard,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                  ),
                ), 
                Expanded(
                  child:  ReusableCard(
                    color: activeColorCard,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                  ),
                ),
              ],
            ),
          ),
           const Expanded(
            child: ReusableCard(
              color: activeColorCard,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child:  ReusableCard(
                    color:activeColorCard,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeColorCard,
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




