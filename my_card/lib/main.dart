import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              Text(
                'Malik Rasaq',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 220.0,
                child: Divider(
                  color: Colors.blue,
                  thickness: 3.0,
                ),
              ),
              Card(
                color: Colors.blue,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+2349036985938',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'malikrasaq@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
