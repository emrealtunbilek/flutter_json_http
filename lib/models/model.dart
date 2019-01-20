
class Model {

  String model_adi;
  int fiyat;
  bool benzinli;

  Model.fromJsonMap(Map<String, dynamic> map): 
    model_adi = map["model_adi"],
    fiyat = map["fiyat"],
    benzinli = map["benzinli"];

}
