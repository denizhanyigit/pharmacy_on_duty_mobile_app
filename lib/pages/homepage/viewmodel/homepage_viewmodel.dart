import 'package:pharmacy_on_duty/core/services/getCities-services.dart';
import 'package:mobx/mobx.dart';

class _$HomePageViewModel {}

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @observable
  String cityValue = 'Seçiniz';
  @observable
  List<String> cityListValue = [
    'Seçiniz',
  ];

  @action
  downloadCity() async {
    cityListValue += await CitiesServices.getcities();
  }

  @action
  uptadeCityValue(String? newValue) {
    newValue != null ? cityValue = newValue : cityValue;
  }
}
