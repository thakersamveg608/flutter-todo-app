import 'package:flutter/material.dart';
import 'package:myapp/Quote.dart';

class QuoteItem extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteItem({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 10.0,),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),

            )
          ],
        ),
      ),
    );
  }
}

