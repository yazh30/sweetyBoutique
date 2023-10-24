import 'package:flutter/material.dart';
import 'package:sweetyboutique_app/models/User/UserLoginModel.dart';
import './login_page.dart';

 class LoginPageViewModel{
  UserLoginModel UserData = new UserLoginModel();
  // Add your state and logic here
bool LoginBottomValidation() {
  if (UserData!=null &&
      UserData.email!=null &&
      UserData.email!.isNotEmpty &&
      UserData.password!=null &&
      UserData.password!.isNotEmpty) {
     return true;
  } else {
    return false;
  }  
}



}
