import 'package:flutter/material.dart';
import 'package:myapp/Quote.dart';
import 'QuoteItem.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'hello', author: 'yash'),
    Quote(text: 'world', author: 'samveg'),
    Quote(text: '!!', author: 'samveg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
         children: quotes.map((quote) {
           return QuoteItem(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            });
         }).toList(),
      ),
    );
  }
}
