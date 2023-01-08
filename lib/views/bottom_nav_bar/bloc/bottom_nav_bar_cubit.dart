import 'package:bloc/bloc.dart';
import 'package:ibilling/core/files_path.dart';
import 'package:ibilling/views/home/invoice_page.dart';
import 'package:ibilling/views/home/single_page.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarInitial());

  int currentPage = 0;
  int bottomIndex = 0;
  final List pages = [
    ContractsPage(),
    const HistoryPage(),
    const SizedBox(),
    const SavedPage(),
    const ProfilePage(),
    const SingleView(),
    const NewPage(),
    const InvoiceView()
  ];
  void changePage(int index, BuildContext context) {
    if (index == 2) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const NewPage();
          });
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
    } else {
      currentPage = index;
      bottomIndex = index;
      emit(BottomNavBarChangePage(currentPage));
    }
  }
}
