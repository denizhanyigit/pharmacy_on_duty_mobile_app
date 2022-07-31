import 'package:mobx/mobx.dart';
import 'package:pharmacy_on_duty/core/model/pharmacy_list_model.dart';
import 'package:pharmacy_on_duty/core/services/getCities-services.dart';
import 'package:pharmacy_on_duty/core/services/pharmactList-services.dart';
part 'homepage_viewmodel.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @observable
  PharmacyListModel? model;
  @observable
  List<Pharmacies> pharmacies = [];

  @observable
  String cityValue = 'Seçiniz';

  @observable
  bool listButtonVisible = false;

  @observable
  List<String> cityListValue = [
    'Seçiniz',
  ];

  @observable
  String countyValue = '';

  @observable
  List<String> countyListValue = [];

  @action
  downloadCity() async {
    cityListValue += await CitiesServices.getcities();
  }

  @action
  uptadeCityValue(String? newValue) {
    countyValue = "Tümü";
    newValue != null ? cityValue = newValue : cityValue;
    downloadCounty(cityName: newValue);
    listButtonVisible = true;
  }

  @action
  downloadCounty({String? cityName}) async {
    countyListValue = ['Tümü'];
    countyListValue += await CitiesServices.getCounties(cityName!);
  }

  @action
  updateCountyValue(String? newValue) {
    newValue != null ? countyValue = newValue : countyValue;
  }

  @action
  getPharmacies(String cityName, String countyName) async {
    model = await PharmacyListServices.pharmacyList(cityName, countyName);
    return model!.pharmacies;
  }
}
