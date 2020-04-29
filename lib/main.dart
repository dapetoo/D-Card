import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am Rich',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Simple Biz App'),
        leading: Icon(Icons.phone_android),
        backgroundColor: Colors.teal.shade900,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.brown.shade800,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C5603AQHSFbdrjvcUqg/profile-displayphoto-shrink_200_200/0?e=1593648000&v=beta&t=OyvCuhvCavQ-TUzOvrSVZ5UMyzd9IgUsCXIxC-4u4hc'),
            ),
            Text(
              'Peter Dada',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico Regular'),
            ),
            Text(
              'Mobile App Developer'.toUpperCase(),
              style: TextStyle(
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+234 8164 04 6961',
                    style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: 'Source Sans ',
                        color: Colors.teal.shade900),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'dapetoo@gmail.com',
                    style: TextStyle(
                        fontSize: 21.0,
                        fontFamily: 'Source Sans ',
                        color: Colors.teal.shade900),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
