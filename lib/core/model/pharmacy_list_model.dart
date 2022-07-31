class PharmacyListModel {
  String? city;
  String? county;
  List<Pharmacies>? pharmacies;

  PharmacyListModel({this.city, this.county, this.pharmacies});

  PharmacyListModel.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    county = json['county'];
    if (json['pharmacies'] != null) {
      pharmacies = <Pharmacies>[];
      json['pharmacies'].forEach((v) {
        pharmacies!.add(new Pharmacies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['county'] = this.county;
    if (this.pharmacies != null) {
      data['pharmacies'] = this.pharmacies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pharmacies {
  int? id;
  String? name;
  String? address;
  String? phone;

  Pharmacies({this.id, this.name, this.address, this.phone});

  Pharmacies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    return data;
  }
}
