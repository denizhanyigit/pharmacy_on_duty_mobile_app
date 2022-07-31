import 'package:pharmacy_on_duty/core/init/network-client.dart';
import 'package:pharmacy_on_duty/core/model/pharmacy_list_model.dart';

class PharmacyListServices {
  static Future<PharmacyListModel> pharmacyList(String cityName, String countyName) async {
    try {
      var response = await NetworkClient.instance!.dio
          .get('https://denizhanyigit.com/getPharmacy?city=' + cityName + '&county=' + countyName);
      return PharmacyListModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
