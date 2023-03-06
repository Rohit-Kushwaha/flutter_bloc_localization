part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {}

class LoadLanguage extends LanguageEvent{
final Locale locale;

LoadLanguage(this.locale);
// LoadLanguage({this.locale = const Locale('en' , 'US')});
}