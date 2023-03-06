part of 'language_bloc.dart';

@immutable
class LanguageState extends Equatable {
  final Locale? locale;
  const LanguageState({this.locale});

  factory LanguageState.intial() =>
      const LanguageState(locale: Locale('en', 'US'));

  @override
  List<Object?> get props => [locale];

  LanguageState copyWith({Locale? locale}) =>
      LanguageState(locale: locale ?? this.locale);
}

class LanguageInitial extends LanguageState {}
