import 'package:pharmacy_on_duty/core/init/network-client.dart';

class CitiesServices {
  static Future<List<String>> getcities() async {
    try {
      var response = await NetworkClient.instance!.dio.get('https://denizhanyigit.com/city?requestType=getAllCity');
      List<String> responseList = response.data['cities'].cast<String>();
      return responseList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
