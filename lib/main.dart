import 'package:easy_localization/easy_localization.dart';

import 'core/files_path.dart';
import 'core/init/notifier/cubit_list.dart';

void main() async {
  await _init();
  runApp(
    MultiBlocProvider(
      providers: [...ApplicationCubit.instance.depentItems],
      child: EasyLocalization(
        saveLocale: true,
        fallbackLocale: LanguageManager.instance.enLocale,
        startLocale: _deviceLangChek(),
        supportedLocales: LanguageManager.instance.supportedLocales,
        path: LanguageManager.instance.LANG_ASSET_PATH,
        child: MyApp(),
      ),
    ),
  );
}

Future _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

Locale _deviceLangChek() {
  return Platform.localeName.contains("uz")
      ? LanguageManager.instance.uzLocale
      : Platform.localeName.contains("ru")
          ? LanguageManager.instance.ruLocale
          : LanguageManager.instance.enLocale;
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 815),
        builder: (context, child) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: TextConst.APP_TITLE,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            navigatorKey: NavigationService.instance.navigatorKey,
            darkTheme: AppThemeDark.instance.darkTheme,
            initialRoute: NavigationConst.Splash_Page,
            onGenerateRoute: Routes.instance.ongenerateRoute,
          );
        });
  }
}
