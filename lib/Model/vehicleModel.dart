import 'dart:convert';

vehicleModel vehicleModelJson(String str) =>
    vehicleModel.fromJson(json.decode(str));

String vehicleModelToJson(vehicleModel data) => json.encode(data.toJson());

/*class vehicleModel {
  int id;
  String v_num;
  String v_type;
  String v_model;

  vehicleModel(
      {required this.id,
      required this.v_num,
      required this.v_type,
      required this.v_model});

  factory vehicleModel.fromJson(Map<String, dynamic> json) => vehicleModel(
      id: json["id"],
      v_num: json["v_num"],
      v_type: json["v_type"],
      v_model: json["v_model"]);

      Map<String,dynamic> toJson() => {

      }
}
*/

class vehicleModel {
  int? id;
  String? vNum;
  String? vType;
  String? vModel;

  vehicleModel({this.id, this.vNum, this.vType, this.vModel});

  vehicleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vNum = json['v_num'];
    vType = json['v_type'];
    vModel = json['v_model'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['v_num'] = this.vNum;
    data['v_type'] = this.vType;
    data['v_model'] = this.vModel;
    return data;
  }
}
