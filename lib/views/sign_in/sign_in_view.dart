import 'package:ibilling/views/sign_in/sign_in_cubit.dart';
import 'package:ibilling/views/sign_in/sign_in_state.dart';
import 'package:ibilling/widgets/sign_text_field_widget.dart';

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
                SignTextFieldW(
                    controller: context.signInCTStream.emailController,
                    isLastField: isLastField,
                    onPressed: onPressed)
              ],
            ),
          ),
        ),
      );
}
