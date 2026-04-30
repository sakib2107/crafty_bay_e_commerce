import '../features/shared/presentation/provider/main_nav_provider.dart';
import 'providers/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
import 'routes.dart';
import '../features/auth/presentation/screens/splash_screen.dart';
import 'app_theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LocalizationProvider()..loadLocale(),
        ),
        ChangeNotifierProvider(create: (_) => MainNavProvider()),
      ],
      child: Consumer<LocalizationProvider>(
        builder: (context, localizationProvider, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Crafty Bay',
           // navigatorKey: navigatorKey,
            initialRoute: SplashScreen.name,
            onGenerateRoute: Routes.onGenerateRoute,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: localizationProvider.supportedLocales,
            locale: localizationProvider.locale,
          );
        }
      ),
    );
  }
}

