import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*

  Credits to google flutter Docs!

 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) 
  {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                new Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: new Text(
                    "Oeschinen Lake Campground",
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),

                new Text(
                  "Kandersteg Switzerland",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                
              ],
            ),
          ),

          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text("41"),
        ],
      ),
    );



    Column _buildButtonColumn(Color color, IconData icon, String label){
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color
              ),
            ),
          ),
        ],
      );
    }


    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),

        ],
      ),
    );


    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: new Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true, // By setting softwrap to true, 
                        //text lines will fill the column width before wrapping at a word boundary.
      ),
    );








    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrollable layout demo',
            style: new TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15
            ),
          ),
          centerTitle: true,
        ),
        body: ListView( // listview is used rather than Column() 
                        // since it supports app body scrolling when the app is run on a small device.
          children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover, /* as small as possible while covering the entirebox
                                  in this case the fit is only dependent on height not width.
                                */
            ),
            titleSection,
            buttonSection,
            textSection,
          ]
        ),
      ),
    );
  }

  


  



}



