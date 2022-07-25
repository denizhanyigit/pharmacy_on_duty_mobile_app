import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pharmacy_on_duty/pages/homepage/viewmodel/homepage_viewmodel.dart';
import '../../../core/widgets/appbar_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchPharmacy extends StatefulWidget {
  const SearchPharmacy({Key? key}) : super(key: key);

  @override
  State<SearchPharmacy> createState() => _SearchPharmacyState();
}

class _SearchPharmacyState extends State<SearchPharmacy> {
  final HomePageViewModel _viewModel = HomePageViewModel();
  @override
  void initState() {
    _viewModel.downloadCity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'İl Seçiniz',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(85, 24, 23, 23)),
                  borderRadius: BorderRadius.circular(15)),
              child: DropdownButtonHideUnderline(
                child: Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DropdownButton<String>(
                      hint: Text(_viewModel.cityValue),
                      value: _viewModel.cityValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        _viewModel.uptadeCityValue(newValue);
                      },
                      items: _viewModel.cityListValue.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  );
                }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'İlçe Seçiniz',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(85, 24, 23, 23)),
                  borderRadius: BorderRadius.circular(15)),
              child: DropdownButtonHideUnderline(
                child: Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DropdownButton<String>(
                      hint: Text(_viewModel.countyValue),
                      value: _viewModel.countyValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        _viewModel.updateCountyValue(newValue);
                      },
                      items: _viewModel.countyListValue.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
