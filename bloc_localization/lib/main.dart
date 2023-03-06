import 'package:bloc_localization/app_localization.dart';
import 'package:bloc_localization/bloc/language_bloc.dart';
import 'package:bloc_localization/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(BlocProvider<LanguageBloc>(
    create: (context) => LanguageBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
      return MaterialApp(
        locale: state.locale,
        localizationsDelegates: const [
          AppLocalization.delegate,
          // Provide Localization to Material App globally
          GlobalMaterialLocalizations.delegate,
          // for support text left to right or left to right
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('fr', 'CH'),
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      );
    });
  }
}
