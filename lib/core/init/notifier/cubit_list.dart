import 'package:ibilling/views/bottom_nav_bar/bloc/bottom_nav_bar_cubit.dart';

import 'package:ibilling/views/sign_in/sign_in_cubit.dart';

import '../../files_path.dart';

class ApplicationCubit {
  static final ApplicationCubit _instance = ApplicationCubit._init();
  static ApplicationCubit get instance => _instance;
  ApplicationCubit._init();

  List<BlocProvider> depentItems = [
    BlocProvider<BottomNavBarCubit>(
      create: (context) => BottomNavBarCubit(),
    ),
    BlocProvider<IntroCubit>(
      create: (contex) => IntroCubit(),
    ),
    BlocProvider(
      create: (context) => SignInCubit(),
    ),
    BlocProvider<SignUpCubit>(
      create: (BuildContext context) => SignUpCubit(),
    ),
  ];
}
