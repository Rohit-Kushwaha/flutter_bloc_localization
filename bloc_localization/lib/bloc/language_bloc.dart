import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitial())

  {
    on<LanguageEvent>((event, emit) async {
      if (event is LoadLanguage) {
        emit(LanguageState(locale: event.locale));
      }
    });
  }
}
