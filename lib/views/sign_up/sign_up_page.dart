import 'package:ibilling/views/sign_up/sign_up_state.dart';

import '../../core/files_path.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return scaffold(context);
      },
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(
                  height: 48.h,
                ),
                Text(
                  "Create an account",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorConst.instance.kIntro,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                //! Full Name
                SignTextFieldW(
                  controller: context.signUpCTStream.nameController,
                  title: "Full name",
                  isLastField: false,
                  onPressed: () {
                    context.signInCT.continueButtonPressable();
                  },
                ),
                SizedBox(
                  height: SizeConst.instance.hMedium,
                ),
                //! Email
                SignTextFieldW(
                  controller: context.signUpCTStream.emailController,
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
                      context.signUpCT.continueButtonPressed(),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 28.h,
                ),
                //! IntroButton
                IntroButton(
                  text: "Continue",
                  voidCallback: context.signInCTStream.continueButton
                      ? () {
                          NavigationService.instance.pushNamedRemoveUntil(
                              routeName: NavigationConst.Bottom_Nav_Bar_View);
                        }
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
