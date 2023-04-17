class UserSignupModel {
  String? name;
  String? email;
  String? password;
  String? dob;
  Address? address;

  UserSignupModel(
      {this.name, this.email, this.password, this.dob, this.address});

  UserSignupModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    dob = json['dob'];
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['dob'] = this.dob;
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    return data;
  }
}

class Address {
  String? city;
  String? state;
  String? country;
  int? pincode;

  Address({this.city, this.state, this.country, this.pincode});

  Address.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['pincode'] = this.pincode;
    return data;
  }
}
