import 'dart:convert';

class UserModel<String> {
  int? id;
  String? phone;
  String? name;
  String? email;
  String? password;
  String? country;

  UserModel({this.id, this.name, this.phone, this.email, this.password,this.country});

  // To save an object to the Sharedprefrences you have to convert it to map and then to String :
  // The Next two methods are just for save

  Map toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,
      'country': country
    };
  }

  fromMapToString(Map map) {
    return jsonEncode(map).toString();
  }

  // -------------------   // To get an object from the Sharedprefrences you have to convert it to String and then to Map :
  // The Next two methods are just for get

  fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    phone = map['phone'];
    email = map['email'];
    password = map['password'];
    country = map['country'];
  }

  // Map fromStringToMap(String string) {
  //   return jsonDecode(string);
  // }
}
