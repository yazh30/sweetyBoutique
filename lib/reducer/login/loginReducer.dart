import 'package:sweetyboutique_app/actions/login/loginAction.dart';
import 'package:sweetyboutique_app/states/login/loginState.dart';

LoginState loginReducer(LoginState state, dynamic action) {
  if (action is UserLoginAction) {
    return state.copyWith(user: action.userLogin);
  }
  return state;
}
