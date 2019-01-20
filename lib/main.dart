import 'package:flutter/material.dart';
import 'package:flutter_json_http/local_json.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Json ve Api"),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(child:Text("Local Json"), color: Colors.green, onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LocalJsonKullanimi()));
            },),
          ],
        ),
      ),
    );
  }
}

