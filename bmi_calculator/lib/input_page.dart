import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.icon ,required this.label}) : super(key: key);

  final IconData icon;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
        icon,
        size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),

          )
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.color , this.cardChild}) : super(key: key);

  final Color color;
  final Widget? cardChild;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
