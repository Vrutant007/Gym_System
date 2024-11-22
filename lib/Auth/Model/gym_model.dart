/*class GymModel {
  String email;
  String password;
  String name;

  GymModel({required this.email, required this.password, required this.name});

  // You can add a method to convert from JSON if needed
  factory GymModel.fromJson(Map<String, dynamic> json) {
    return GymModel(
      email: json['email'],
      password: json['password'],
      name: json['name'],
    );
  }

  // Method to convert GymModel to JSON if needed
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
    };
  }
}*/
class GymModel {
  String? responseCode;
  String? message;
  String? status;
  UserData? userData;

  GymModel({this.responseCode, this.message, this.status, this.userData});

  GymModel.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    message = json['message'];
    status = json['status'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response_code'] = this.responseCode;
    data['message'] = this.message;
    data['status'] = this.status;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData{
  String? id;
  String? name;
  String? email;
  String? password;

  UserData(this.id,this.name,this.email,this.password);

  UserData.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
