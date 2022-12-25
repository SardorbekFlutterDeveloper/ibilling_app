import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationCubit {
  static final ApplicationCubit _instance = ApplicationCubit._init();
  static ApplicationCubit get instance => _instance;
  ApplicationCubit._init();

  List<BlocProvider> depentItems = [
    BlocProvider(
      create: (context) => BottomNavBarCubit(),
    )
  ];
}
