import 'package:mobx/mobx.dart';
import 'package:pharmacy_on_duty/core/services/getCities-services.dart';
part 'homepage_viewmodel.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @observable
  String cityValue = 'Seçiniz';

  @observable
  List<String> cityListValue = [
    'Seçiniz',
  ];

  @observable
  String countyValue = 'Tümü';

  @observable
  List<String> countyListValue = [
    'Tümü',
  ];

  @action
  downloadCity() async {
    cityListValue += await CitiesServices.getcities();
  }

  @action
  uptadeCityValue(String? newValue) {
    countyValue = "Tümü";
    newValue != null ? cityValue = newValue : cityValue;
    downloadCounty(cityName: newValue);
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
}
