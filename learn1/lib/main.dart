import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
      debugShowCheckedModeBanner: false,
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Push yourself, because no one else is going to do it for you.",author: "AHS"),
    Quote(text: "Sometimes later becomes never", author: "HSA"),
    Quote(text: "Great things never come from comfort zones.", author: "SAH")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Super Quotes!"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent[700],
        ),
        body: Column(
          children: quotes.map((quote) {
            return QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                });
          }).toList(),
        ));
  }
}
