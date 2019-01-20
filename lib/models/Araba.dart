import 'package:flutter_json_http/models/model.dart';

class Araba {

  String araba_adi;
  String ulke;
  int kurulus_tarihi;
  List<Model> model;

  Araba.fromJsonMap(Map<String, dynamic> map): 
    araba_adi = map["araba_adi"],
    ulke = map["ulke"],
    kurulus_tarihi = map["kurulus_tarihi"],
    model = List<Model>.from(map["model"].map((it) => Model.fromJsonMap(it)));

}
