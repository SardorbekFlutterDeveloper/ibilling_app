abstract class SignInState {
  const SignInState();
}

class SignInInitial extends SignInState {
  const SignInInitial();
}

class SignInLoading extends SignInState {
  const SignInLoading();
}

class SignInComplate extends SignInState {
  const SignInComplate();
}

class ChangeObsecuretext extends SignInState {
  final bool isObsecureText;
  ChangeObsecuretext(this.isObsecureText);
}

class ContinueButton extends SignInState {
  final bool continueButton;
  ContinueButton(this.continueButton);
}
