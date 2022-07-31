import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pharmacy_on_duty/core/model/pharmacy_list_model.dart';
import 'package:pharmacy_on_duty/core/widgets/appbar_widget.dart';
import 'package:pharmacy_on_duty/pages/pharmacylistpage/viewmodel/pharmacylist_viewmodel.dart';

// ignore: must_be_immutable
class PharmacyList extends StatefulWidget {
  List<Pharmacies>? pharmacies;
  PharmacyList({Key? key, this.pharmacies}) : super(key: key);

  @override
  State<PharmacyList> createState() => _PharmacyListState();
}

class _PharmacyListState extends State<PharmacyList> {
  final PharmacyListViewModel _viewModel = PharmacyListViewModel();

  @override
  void initState() {
    super.initState();
    print(widget.pharmacies!.isEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      appBar: PreferredSize(
        preferredSize: Size(100, 50),
        child: BuildAppBar(),
      ),
      body: RefreshIndicator(
          onRefresh: () async {},
          child: widget.pharmacies!.isEmpty
              ? const Center(
                  child: Text('Görüntülenecek Eczane Bulunamamıştır!'),
                )
              : Observer(
                  builder: (_) {
                    return ListView.builder(
                      padding: const EdgeInsets.all(20),
                      itemCount: widget.pharmacies!.length,
                      itemBuilder: ((context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 25,
                          shadowColor: Colors.grey.shade800,
                          color: const Color(0xff37517e),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.note_alt_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              //Proje adı ve anket adı
                              Text(
                                widget.pharmacies![index].name!,
                                style: const TextStyle(color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff47b2e4), borderRadius: BorderRadius.circular(50)),
                                  width: MediaQuery.of(context).size.width * 0.4,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${widget.pharmacies![index].phone!}',
                                        style: const TextStyle(color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Katıldığım Tarih: ${widget.pharmacies![index].address!}',
                                  style: const TextStyle(color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  },
                )),
    );
  }

  /*Observer deneme123(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView(
          padding: const EdgeInsets.all(6),
          children: [
            _viewModel.model == null
                ? const Center(child: CircularProgressIndicator())
                : _viewModel.model!.pharmacies!.isNotEmpty
                    ? Card(
                        elevation: 25,
                        shadowColor: Colors.grey.shade400,
                        child: DataTable(
                            columnSpacing: 10,
                            dataRowHeight: 75,
                            dividerThickness: 5,
                            showBottomBorder: false,
                            columns: const [
                              DataColumn(
                                label: Flexible(
                                  child: Center(
                                    child: Text(
                                      'PUAN',
                                    ),
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'DURUM',
                                  ),
                                ),
                              ),
                              DataColumn(
                                label: Flexible(
                                  child: Text(
                                    'SEÇENEKLER',
                                  ),
                                ),
                              ),
                            ],
                            rows: _viewModel.model!.pharmacies!
                                .map(
                                  (e) => DataRow(
                                    cells: <DataCell>[
                                      DataCell(
                                        Center(
                                          child: Container(
                                            height: MediaQuery.of(context).size.height * 0.04,
                                            width: MediaQuery.of(context).size.width * 0.3,
                                            child: Row(
                                              children: [
                                                Text(
                                                  e.name!,
                                                  style: const TextStyle(color: Colors.black, fontSize: 16),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(Text(
                                        e.address!,
                                        style: const TextStyle(fontSize: 16),
                                      )),
                                      DataCell(Text(
                                        e.phone!,
                                        style: const TextStyle(fontSize: 16),
                                      )),
                                    ],
                                  ),
                                )
                                .toList()),
                      )
                    : Center(
                        child: Container(
                            margin: const EdgeInsets.only(top: 200),
                            child: const Text(
                              'Geçmiş bir ödeme talebiniz bulunamadı!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
            const SizedBox(
              height: 50,
            )
          ],
        );
      },
    );
  }*/
}
