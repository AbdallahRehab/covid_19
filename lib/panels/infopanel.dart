import 'package:covid19/datasorce.dart';
import 'package:covid19/pages/faqs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FAQPage()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('FAQS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              launch('https://covid19responsefund.org/');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('DONATE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('MYTH BUSTERS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
