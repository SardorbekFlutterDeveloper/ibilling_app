import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ibilling/core/extension/string_extension.dart';
import 'package:ibilling/core/files_path.dart';
import 'package:ibilling/views/intro/_widget/tab_page.dart';
import 'package:ibilling/views/intro/intro_cubit.dart';
import 'package:ibilling/views/intro/intro_state.dart';
import 'package:ibilling/views/intro/_widget/language_button_sheet.dart';
import 'package:ibilling/widgets/buttons/intro_button.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntroCubit, IntroState>(
        builder: (context, Object satate) {
      return scaffold(context);
    });
  }

  Scaffold scaffold(context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TextConst.INTRO_TEXT,
                    style: FontStyleConst.instance.introAppBar,
                  ),
                  LanguageIcon(
                    iconName: context.locale.toString().contains("uz")
                        ? ImageConst.instance.langUzb
                        : context.locale.toString().contains("ru")
                            ? ImageConst.instance.langRus
                            : ImageConst.instance.langEng,
                    onTap: () {
                      LanguageModalSheet.instance.changeLang(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      TabPage(
                        imageName: ImageConst.instance.introWelcome,
                        subTitle:
                            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
                        title: "welcome".locale,
                      ),
                      TabPage(
                        imageName: ImageConst.instance.introSearch,
                        title: "Save and serch on IBilling",
                        subTitle:
                            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
                      ),
                      TabPage(
                        imageName: ImageConst.instance.introGrow,
                        title: "Grow on IBilling",
                        subTitle:
                            "IBilling tool lets you store customer and prospect contact information, identify sales opportunities.",
                      ),
                    ],
                    onPageChanged: (int index) {
                      context.introCt.changeTab(index);
                    },
                  ),
                ),
                SizedBox(height: SizeConst.instance.hExtraLarge),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 170.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8.r,
                        color: context.introCTStream.tabPageIndex == 0
                            ? ColorConst.instance.kIntro
                            : ColorConst.instance.kLightGrey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8.r,
                        color: context.introCTStream.tabPageIndex == 1
                            ? ColorConst.instance.kIntro
                            : ColorConst.instance.kLightGrey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8.r,
                        color: context.introCTStream.tabPageIndex == 2
                            ? ColorConst.instance.kIntro
                            : ColorConst.instance.kLightGrey,
                      ),
                      SizedBox(height: 80.h),
                      IntroButton(
                        text: "Log in",
                        voidCallback: () {
                          NavigationService.instance
                              .pushNamed(routeName: NavigationConst.SignIn);
                        },
                      ),
                      SizedBox(height: SizeConst.instance.hMedium),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Text.rich(
                          TextSpan(
                            text: "By logging in, you agree to our ",
                            style: FontStyleConst.instance.introBottom1,
                            children: [
                              TextSpan(
                                text: "Terms of Use",
                                style: FontStyleConst.instance.introBottom2,
                              ),
                              TextSpan(
                                text: " and ",
                                style: FontStyleConst.instance.introBottom1,
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: FontStyleConst.instance.introBottom2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
