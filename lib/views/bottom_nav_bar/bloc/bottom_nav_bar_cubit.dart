import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/views/bottom_nav_bar/bloc/bottom_nav_bar_state.dart';
import 'package:ibilling/views/home/contracts/contracts.dart';

import 'package:ibilling/views/home/history_page.dart';
import 'package:ibilling/views/home/saved_page.dart';

import '../../../core/files_path.dart';
import '../../home/invoice_page.dart';
import '../../home/single_page.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarInitial());

  int currentPage = 0;
  int bottomIndex = 0;
  final List pages = [
    const ContractsView(),
    const HistoryView(),
    const SizedBox(),
    const SavedView(),
    const ProfileView(),
    const SingleView(),
    const NewPage(),
    const InvoiceView(),
  ];

  void changePage(int index, BuildContext context) {
    if (index == 2) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const NewPage();
        },
      );
    } else if (index == 5) {
      currentPage = index;
      emit(BottomNavBarChangePage(currentPage));
    } else if (index == 6) {
      currentPage = index;
      bottomIndex = 2;
      emit(BottomNavBarChangePage(currentPage));
    } else if (index == 7) {
      currentPage = index;
      bottomIndex = 2;
      emit(BottomNavBarChangePage(currentPage));
    } else {
      currentPage = index;
      bottomIndex = index;
      emit(BottomNavBarChangePage(currentPage));
    }
  }
}
