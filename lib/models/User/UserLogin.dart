import 'package:json_annotation/json_annotation.dart';
part 'UserLogin.g.dart';

@JsonSerializable()
class UserLogin{
  String? email;
  String? password;
  bool? Rememberme;

  UserLogin({this.email,this.password,this.Rememberme});

  factory UserLogin.fromJson(Map<String,dynamic> json) =>
  _$UserLoginFromJson(json);
  Map<String,dynamic> toJson() => _$UserLoginToJson(this);
}