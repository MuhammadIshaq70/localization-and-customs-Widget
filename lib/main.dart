// ignore_for_file: prefer_if_null_operators

import 'package:app_localization/controller/language_change_controller.dart';
import 'package:app_localization/homwScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  final String languageCode = sp.getString('Language_code') ?? '';
  runApp(MyApp(
    local: languageCode,
  ));
}

class MyApp extends StatelessWidget {
  final String local;
  const MyApp({super.key, required this.local});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageChangeController()),
      ],
      child: Consumer<LanguageChangeController>(
        builder: (context, provider, child) {
          if (local.isEmpty) {
            provider.changeLanguage(const Locale('en'));
          }
          return MaterialApp(
              title: 'Flutter Demo',
              locale: local == ''
                  ? const Locale('en')
                  : provider.appLocal == null
                      ? const Locale('en')
                      : provider.appLocal,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate
              ],
              supportedLocales: const [
                Locale('en'),
                Locale('es'),
              ],
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const HomeScreen());
        },
      ),
    );
  }
}
