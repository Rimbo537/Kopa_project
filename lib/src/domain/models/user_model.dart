
class UserModel {

  String? id;
  String? phone;
  String? name;
  String? lastName;
  String? email;
  String? sity;

  UserModel({
    this.id,
    this.phone,
    this.name,
    this.lastName,
    this.email,
    this.sity,

  });

  UserModel.fromJson(dynamic json) {
    id = json['id'];
    phone = json['phone'];
    name = json['name'];
    lastName = json['lastName'];
    email = json['email'];
    sity = json['sity'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = this.id;
    map['phone'] = this.phone;
    map['name'] = this.name;
    map['lastName'] = this.lastName;
    map['email'] = this.email;
    map['sity'] = this.sity;
    return map;
  }

}

