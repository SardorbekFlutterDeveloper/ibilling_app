import 'package:ibilling/core/files_path.dart';

class SignTextFieldW extends StatelessWidget {
  final String? title;
  final TextEditingController controller;
  final Function onPressed;
  final VoidCallback? obsecureTextPressed;
  final bool? isObsecureText;
  final bool isLastField;

  const SignTextFieldW({
    Key? key,
    required this.controller,
    required this.isLastField,
    required this.onPressed,
    this.obsecureTextPressed,
    this.title,
    this.isObsecureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: FontStyleConst.instance.introBody,
        ),
        SizedBox(
          height: 4.h,
        ),
        SizedBox(
          width: 327.w,
          height: 44.h,
          child: TextFormField(
            controller: controller,
            cursorColor: ColorConst.instance.kBlack,
            cursorHeight: SizeConst.instance.hExtraLarge,
            textAlignVertical: TextAlignVertical.center,
            style: FontStyleConst.instance.introTextForm,
            obscureText: isObsecureText ?? false,
            textInputAction:
                isLastField ? TextInputAction.done : TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: SizeConst.instance.wMedium),
              suffixIcon: isObsecureText == null
                  ? null
                  : InkWell(
                      onTap: obsecureTextPressed,
                      child: Icon(
                        isObsecureText!
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        color: ColorConst.instance.kBlack,
                        size: 20.r,
                      ),
                    ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(
                  color: ColorConst.instance.kDarkGrey,
                  width: 1.2.w,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide(
                  color: ColorConst.instance.kDarkGrey,
                  width: 1.2.w,
                ),
              ),
            ),
            onChanged: (String v) {
              onPressed();
            },
          ),
        ),
      ],
    );
  }
}
