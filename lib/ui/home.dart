import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _index = 0;
  List<String> quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "The way to get started is to quit talking and begin doing.",
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.",
    "If life were predictable it would cease to be life, and be without flavor.",
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.",
    "Life is what happens when you're busy making other plans.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        title: Text("Quotes Application"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 350,
              height: 350,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.amberAccent.shade700,
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Text(
                quotes[_index % quotes.length],
                 textAlign: TextAlign.center,
                 style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
            ),
            Divider(
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.amberAccent.shade700,
                icon: Icon(Icons.lightbulb_outline),
                label: Text(
                  "Get Quotes",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Method for Quotes
  void _showQuote() {
    setState(() {
      _index++;
    });
  }
}
