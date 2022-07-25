// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homepage_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageViewModel on _HomePageViewModelBase, Store {
  late final _$cityValueAtom =
      Atom(name: '_HomePageViewModelBase.cityValue', context: context);

  @override
  String get cityValue {
    _$cityValueAtom.reportRead();
    return super.cityValue;
  }

  @override
  set cityValue(String value) {
    _$cityValueAtom.reportWrite(value, super.cityValue, () {
      super.cityValue = value;
    });
  }

  late final _$cityListValueAtom =
      Atom(name: '_HomePageViewModelBase.cityListValue', context: context);

  @override
  List<String> get cityListValue {
    _$cityListValueAtom.reportRead();
    return super.cityListValue;
  }

  @override
  set cityListValue(List<String> value) {
    _$cityListValueAtom.reportWrite(value, super.cityListValue, () {
      super.cityListValue = value;
    });
  }

  late final _$countyValueAtom =
      Atom(name: '_HomePageViewModelBase.countyValue', context: context);

  @override
  String get countyValue {
    _$countyValueAtom.reportRead();
    return super.countyValue;
  }

  @override
  set countyValue(String value) {
    _$countyValueAtom.reportWrite(value, super.countyValue, () {
      super.countyValue = value;
    });
  }

  late final _$countyListValueAtom =
      Atom(name: '_HomePageViewModelBase.countyListValue', context: context);

  @override
  List<String> get countyListValue {
    _$countyListValueAtom.reportRead();
    return super.countyListValue;
  }

  @override
  set countyListValue(List<String> value) {
    _$countyListValueAtom.reportWrite(value, super.countyListValue, () {
      super.countyListValue = value;
    });
  }

  late final _$downloadCityAsyncAction =
      AsyncAction('_HomePageViewModelBase.downloadCity', context: context);

  @override
  Future downloadCity() {
    return _$downloadCityAsyncAction.run(() => super.downloadCity());
  }

  late final _$downloadCountyAsyncAction =
      AsyncAction('_HomePageViewModelBase.downloadCounty', context: context);

  @override
  Future downloadCounty({String? cityName}) {
    return _$downloadCountyAsyncAction
        .run(() => super.downloadCounty(cityName: cityName));
  }

  late final _$_HomePageViewModelBaseActionController =
      ActionController(name: '_HomePageViewModelBase', context: context);

  @override
  dynamic uptadeCityValue(String? newValue) {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.uptadeCityValue');
    try {
      return super.uptadeCityValue(newValue);
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateCountyValue(String? newValue) {
    final _$actionInfo = _$_HomePageViewModelBaseActionController.startAction(
        name: '_HomePageViewModelBase.updateCountyValue');
    try {
      return super.updateCountyValue(newValue);
    } finally {
      _$_HomePageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cityValue: ${cityValue},
cityListValue: ${cityListValue},
countyValue: ${countyValue},
countyListValue: ${countyListValue}
    ''';
  }
}
