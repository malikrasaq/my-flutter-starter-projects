import 'package:flutter/material.dart';

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
                    color:  Color(0xFF1D1E33),
                  ),
                ), 
                Expanded(
                  child:  ReusableCard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
           const Expanded(
            child: ReusableCard(
              color: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child:  ReusableCard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
   const ReusableCard({Key? key, required this.color}) : super(key: key);

  final Color color;
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
