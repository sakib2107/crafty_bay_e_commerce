import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../l10n/app_localizations.dart';
import 'routes.dart';
import '../features/auth/presentation/screens/splash_screen.dart';
import 'app_theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
  supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('bn'),
    );
  }
}

