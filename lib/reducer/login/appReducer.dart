import 'package:sweetyboutique_app/reducer/login/loginReducer.dart';
import 'package:sweetyboutique_app/states/login/appState.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    loginState: loginReducer(state.loginState!, action),
  );
}