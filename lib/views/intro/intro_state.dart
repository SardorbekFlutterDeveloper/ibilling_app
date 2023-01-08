abstract class IntroState {
  const IntroState();
}

class IntroInitial extends IntroState {
  const IntroInitial();
}

class IntroLoading extends IntroState {
  const IntroLoading();
}

class IntroComplate extends IntroState {
  const IntroComplate();
}

class ChangeTabPageIndex extends IntroState {
  const ChangeTabPageIndex(int index);
}
