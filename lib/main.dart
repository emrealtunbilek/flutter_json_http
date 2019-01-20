import 'package:flutter/material.dart';
import 'package:flutter_json_http/local_json.dart';
import 'package:flutter_json_http/remote_api.dart';

void main() => runApp(MyApp());

/*
class Ogrenci{
  int id;
  String isim;

  Ogrenci(this.id, this.isim);

  @override
  String toString() {
    return "Adı : $isim id: $id";
  }

  factory Ogrenci.mapiNesneyeDonustur(Map<String, dynamic> gelenMap){
    return Ogrenci(gelenMap['id'], gelenMap['isim']);
  }

  Ogrenci.fromMap(Map<String, dynamic> gelenMap):
      id = gelenMap['id'],
      isim = gelenMap['isim'];


}
*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

/*
    Ogrenci emre=Ogrenci(10, "emre");
    debugPrint(emre.toString());

    Map<String, dynamic> hasanMap={'id' : 15, 'isim' : "Hasan"};
    debugPrint("Adı : "+hasanMap['isim'] + " id: "+hasanMap['id'].toString());

    Ogrenci yeni=Ogrenci.mapiNesneyeDonustur(hasanMap);
    debugPrint(yeni.toString());

    Map<String, dynamic> fatmaMap={'id' : 20, 'isim' : "Fatma"};
    Ogrenci fatma=Ogrenci.fromMap(fatmaMap);
    debugPrint(fatma.toString());
*/


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
            RaisedButton(child:Text("Remote Api"), color: Colors.orangeAccent, onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RemoteApiKullanimi()));
            },),
          ],
        ),
      ),
    );
  }
}

