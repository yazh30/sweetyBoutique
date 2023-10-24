// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserLogin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLogin _$UserLoginFromJson(Map<String, dynamic> json) => UserLogin(
      email: json['email'] as String?,
      password: json['password'] as String?,
      Rememberme: json['Rememberme'] as bool?,
    );

Map<String, dynamic> _$UserLoginToJson(UserLogin instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'Rememberme': instance.Rememberme,
    };
