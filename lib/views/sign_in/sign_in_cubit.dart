import 'package:ibilling/views/sign_in/sign_in_state.dart';

import '../../core/files_path.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(SignInState initialState) : super(initialState);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isObsecureText = true;
  bool continueButton = false;

  void changeIsObsecure() {
    isObsecureText = !isObsecureText;
    emit(ChangeObsecuretext(isObsecureText));
  }

  void continueButtonPressable() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      continueButton = true;
    } else {
      continueButton = false;
    }
    emit(ContinueButton(continueButton));
  }
}
