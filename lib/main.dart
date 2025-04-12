import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: InfoCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InfoCard extends StatefulWidget {

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {

  String message = "I'm Md. Rejaul Korim Sadi, a flutter developer.";

  void updateMessage() {
    setState(() {
      message = "Keep going, Sadi! You're doing great!";
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("My Info Card")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message,
            style: TextStyle(fontSize: 18), textAlign: TextAlign.center),

            SizedBox(height: 20),

            ElevatedButton(
                onPressed: updateMessage,
                child: Text("Tap to Motivate!"),
            ),

          ],
        ),
      ),
    );
  }
}


