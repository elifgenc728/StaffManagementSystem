class CollectionModel {
  String? atananKisi;
  String? gonderenKisi;
  String? bitisTarih;
  String? gonderilenTarih;
  String? durum;

  CollectionModel(
      {this.atananKisi,
      this.gonderenKisi,
      this.bitisTarih,
      this.gonderilenTarih,
      this.durum});

  CollectionModel.fromJson(Map<String, dynamic> json) {
    atananKisi = json['atananKisi'];
    gonderenKisi = json['gonderenKisi'];
    bitisTarih = json['bitisTarih'];
    gonderilenTarih = json['gonderilenTarih'];
    durum = json['durum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['atananKisi'] = this.atananKisi;
    data['gonderenKisi'] = this.gonderenKisi;
    data['bitisTarih'] = this.bitisTarih;
    data['gonderilenTarih'] = this.gonderilenTarih;
    data['durum'] = this.durum;
    return data;
  }
}
