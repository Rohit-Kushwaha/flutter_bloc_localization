import 'package:bloc_localization/bloc/language_bloc.dart';
import 'package:bloc_localization/screen/custom_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List language = ['English', 'French'];
  String lang = 'English';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<LanguageBloc, LanguageState>(builder: (context, state) {
            return DropdownButton(
              dropdownColor: Colors.amber,
              underline: const SizedBox(),
              value: lang,
              items: language.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 24),
                  ),
                );
              }).toList(),

              onChanged: (Object? value) {
                if (value == 'French') {
                  context
                      .read<LanguageBloc>()
                      .add(LoadLanguage(const Locale('fr', '')));
                } else {
                  context
                      .read<LanguageBloc>()
                      .add(LoadLanguage(const Locale('en', 'EN')));
                }
              },
              // onChanged: (value) {
              // lang = value.toString();
              // setState(() {
              // lang = value.toString();
              // }
            );
          }),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  SizedBox(
                    height: 5,
                  ),
                  CusstomView(
                    heading: "rohit",
                    title: "frontendDeveloper",
                    subtitle: "doingJob",
                    description: "fresher",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
