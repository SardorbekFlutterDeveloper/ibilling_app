part of 'bottom_nav_bar_cubit.dart';

abstract class BottomNavBarState {
  const BottomNavBarState();
}

class BottomNavBarInitial extends BottomNavBarState {
  const BottomNavBarInitial();
}

class BottomNavBarChangePage extends BottomNavBarState {
  const BottomNavBarChangePage(int currentPage);
}
