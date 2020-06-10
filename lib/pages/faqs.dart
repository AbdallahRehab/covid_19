import 'package:covid19/datasorce.dart';
import 'package:flutter/material.dart';


class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQS'),
      ),
      body: ListView.builder(
          itemCount: DataSorce.questionAnswers.length,
          itemBuilder: (context,index){
        return ExpansionTile(
          title: Text(DataSorce.questionAnswers[index]['question'],style: TextStyle(fontWeight: FontWeight.bold),),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(DataSorce.questionAnswers[index]['answer']),
            ),
          ],
        );
      }),
    );
  }
}
