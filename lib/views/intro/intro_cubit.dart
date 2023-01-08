import 'package:ibilling/views/intro/intro_state.dart';

import '../../core/files_path.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(const IntroInitial());

  int tabPageIndex = 0;
  void changeTab(int index) {
    tabPageIndex = index;
    emit(ChangeTabPageIndex(index));
  }
}
