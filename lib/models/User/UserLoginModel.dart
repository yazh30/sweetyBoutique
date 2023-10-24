class UserLoginModel {
  String? email;
  String? password;
  bool? Rememberme;
UserLoginModel({this.email,this.password,this.Rememberme});

factory UserLoginModel.fromjson(json) {
  return UserLoginModel(email: json["email"],password: json["password"],Rememberme: json["Rememberme"]);
}

toJson() => {"email": email, "password": password,"Rememberme": Rememberme};

bool LoginBottomValidation() {
  if (this.email!=null &&
      this.email!.isNotEmpty &&
      this.password!=null &&
      this.password!.isNotEmpty) {
     return true;
  } else {
    return false;
  }  
}


} 