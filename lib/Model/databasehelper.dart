import 'package:http/http.dart' as http;
import 'dart:convert';

class DataBaseHelper {
  Future<http.Response> addUser(
      String vehicleNumber, String vehicleType, String vehicleModel) async {
    var url = 'http://localhost:9191/add';

    Map data = {
      'vnum': vehicleNumber,
      'vtype': vehicleType,
      'vmodel': vehicleModel,
    };

    var body = json.encode(data);

    var response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  Future<http.Response> editVehicle(String id, String vehicleNumber,
      String vehicleType, String vehicleModel) async {
    int a = int.parse(id);
    print(a);
    var url = 'http://localhost:9191/update';

    Map data = {
      'id': '$a',
      'vnum': vehicleNumber,
      'vtype': vehicleType,
      'vmodel': vehicleModel,
    };
    var body = json.encode(data);

    var response = await http.put(url,
        headers: {"Content-Type": "application/json"}, body: body);
    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  Future<http.Response> removeRegister(String id) async {
    int a = int.parse(id);
    print(a);
    var url = 'http://localhost:9191/delete/{id}';

    var response =
        await http.delete(url, headers: {"Content-Type": "application/json"});
    print("${response.statusCode}");
    return response;
  }
}
