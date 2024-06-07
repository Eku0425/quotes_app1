import 'package:flutter/material.dart';



class  QuoteModel

{
  String? quote;
  String? author;
  List<QuoteModel> quoteModelList = [];

  QuoteModel({this.author,this.quote});

  factory QuoteModel.fromQuote(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote']);
  }

  QuoteModel.toList(List l1)
  {
    for(int i=0; i<l1.length; i++)
    {
      quoteModelList.add(QuoteModel.fromQuote(l1[i]),);

    }

  }
}
int index = 0;
List colorList=[
  Colors.blueGrey.shade50,
  Colors.blueGrey,
  Colors.black54,
  Colors.blue,
  Colors.lightBlue,
  Colors.lightBlueAccent,
  Colors.blueGrey,
  Colors.lightBlueAccent,
  Colors.blueGrey,
  Colors.lightBlueAccent,
];