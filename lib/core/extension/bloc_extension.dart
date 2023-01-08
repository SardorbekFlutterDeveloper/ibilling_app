import 'package:ibilling/core/files_path.dart';
import 'package:ibilling/views/bottom_nav_bar/bloc/bottom_nav_bar_cubit.dart';
import 'package:ibilling/views/intro/intro_cubit.dart';

import '../../views/sign_in/sign_in_cubit.dart';

extension CubitExtension on BuildContext {
  BottomNavBarCubit get bottomNavBarCT =>
      BlocProvider.of<BottomNavBarCubit>(this, listen: false);
  BottomNavBarCubit get bottomNavBarCTStream =>
      BlocProvider.of<BottomNavBarCubit>(this, listen: false);

  IntroCubit get introCT => BlocProvider.of<IntroCubit>(this, listen: false);
  IntroCubit get introCTStream =>
      BlocProvider.of<IntroCubit>(this, listen: false);
  SignInCubit get signInCT => BlocProvider.of<SignInCubit>(this, listen: false);
  SignInCubit get signInCTSteam =>
      BlocProvider.of<SignInCubit>(this, listen: false);

  // SignUpCubit get signUpCT => BlocProvider.of<>SignUpCubit(this, listen: false);
  // SignupCubit get signUpCTStream => BlocProvider.of(this, listen: false);
}
