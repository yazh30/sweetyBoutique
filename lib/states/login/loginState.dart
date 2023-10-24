import 'package:sweetyboutique_app/models/User/UserLogin.dart';

class LoginState {
  UserLogin? userData;

  LoginState({this.userData});

// sets the initial value for the variable
  factory LoginState.initial() {
    return LoginState(
      userData: null,
    );
  }
// converts encoded string to model/object
  static LoginState fromJson(dynamic json) {
    return LoginState(
      userData: json['userData'] != null
          ? UserLogin.fromJson(json['userData'])
          : null,
    );
  }

// reducers point of contact to state
  LoginState copyWith({
    UserLogin? user,
  }) {
    userData = user;
    return this;
  }

// converts  model/object to string
  dynamic toJson() => {
        'userData': userData != null ? userData!.toJson() : null,
      };
}
