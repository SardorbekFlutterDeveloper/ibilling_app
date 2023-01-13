import 'package:ibilling/views/sign_in/sign_in_cubit.dart';
import 'package:ibilling/views/sign_in/sign_in_state.dart';

import '../../core/files_path.dart';

class SigIn extends StatefulWidget {
  const SigIn({Key? key}) : super(key: key);

  @override
  State<SigIn> createState() => _SignupState();
}

class _SignupState extends State<SigIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, state) {
        return _scaffold(context);
      },
    );
  }

  Scaffold _scaffold(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 48.h,
                ),
                Text(
                  "Log in to account",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorConst.instance.kIntro,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 32.h),
                //! Email
                SignTextFieldW(
                  controller: context.signInCTStream.emailController,
                  isLastField: false,
                  title: "Email",
                  onPressed: () {
                    context.signInCT.continueButtonPressable();
                  },
                ),
                SizedBox(
                  height: SizeConst.instance.hMedium,
                ),
                //! Password
                SignTextFieldW(
                  controller: context.signInCTStream.passwordController,
                  isLastField: true,
                  title: "Password",
                  isObsecureText: context.signInCTStream.isObsecureText,
                  obsecureTextPressed: () =>
                      context.signInCT.changeIsObsecure(),
                  onPressed: () {
                    context.signInCT.continueButtonPressable();
                  },
                ),
                SizedBox(
                  height: 28.h,
                ),
                IntroButton(
                  text: "Continue",
                  voidCallback: context.signInCTStream.continueButton
                      ? () => NavigationService.instance.pushNamedRemoveUntil(
                            routeName: NavigationConst.Bottom_Nav_Bar_View,
                          )
                      : null,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do not have an account?",
                      style: FontStyleConst.instance.introBottom1,
                    ),
                    InkWell(
                      child: Text(
                        "Create it!",
                        style: FontStyleConst.instance.introBottom2,
                      ),
                      onTap: () {
                        NavigationService.instance.pushNamed(
                          routeName: NavigationConst.Signup,
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      );
}
