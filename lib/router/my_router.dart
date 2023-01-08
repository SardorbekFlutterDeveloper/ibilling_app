import 'package:ibilling/core/files_path.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();

  Route? ongenerateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;

    switch (settings.name) {
      case NavigationConst.Splash_Page:
        return easyNavigate(const SplashPage());
    }
  }

  MaterialPageRoute easyNavigate(Widget page) {
    return MaterialPageRoute(builder: (BuildContext context) => page);
  }
}
