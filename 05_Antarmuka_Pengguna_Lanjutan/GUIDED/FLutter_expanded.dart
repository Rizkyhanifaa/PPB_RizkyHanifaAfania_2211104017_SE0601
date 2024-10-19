import 'package:flutter/material.dart';

class FlexibleExpendedScreen extends StatelessWidget {
  const FlexibleExpendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible & Expanded'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          //Flexible Widget
          Text('Flexible'),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Flexible(
                  child: Container(
                height: 100,
                color: Colors.yellow,
                child: const Text(
                    "This is FLexible Widget, it takes uo remaining space but can shrink id neede"),
              )),
              Icon(Icons.sentiment_very_satisfied),
            ],
          ),
          
          //Expanded
          SizedBox(
            height: 100,
          ),
          Text("Expanded"),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.yellow,
                  child: Text(
                    "This is Expanded Widget, it force to take up all the remaining app",
                  ),
                ),
              ),
              Icon(Icons.sentiment_very_satisfied),
            ],
          )
        ],
      ),
    );
  }
}
