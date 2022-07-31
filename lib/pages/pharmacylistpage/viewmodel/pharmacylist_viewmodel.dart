import 'package:mobx/mobx.dart';
import 'package:pharmacy_on_duty/core/model/pharmacy_list_model.dart';
import 'package:pharmacy_on_duty/core/services/pharmactList-services.dart';
part 'pharmacylist_viewmodel.g.dart';

class PharmacyListViewModel = _PharmacyListViewModelBase with _$PharmacyListViewModel;

abstract class _PharmacyListViewModelBase with Store {}
