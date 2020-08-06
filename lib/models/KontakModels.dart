class KontakDataModel {
  List<KontakModel> data;
  String message;

  KontakDataModel({this.data, this.message});

  KontakDataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<KontakModel>();
      json['data'].forEach((v) {
        data.add(new KontakModel.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class KontakModel {
  int id;
  String name;
  String phone;
  String photo;
  String createdAt;
  String updatedAt;

  KontakModel(
      {this.id,
        this.name,
        this.phone,
        this.photo,
        this.createdAt,
        this.updatedAt});

  KontakModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    photo = json['photo'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['photo'] = this.photo;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}