// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "email": "Email Address",
  "asd": "asdasd"
};
static const Map<String,dynamic> kk = {
  "email": "Электронды пошта",
  "asd": "фыв"
};
static const Map<String,dynamic> ru = {
  "email": "Электронная почта",
  "emailwrite": "Введите электронную почту",
  "password": "Пароль",
  "passwordwrite": "Введите пароль",
  "login": "Войти",
  "dha": "У Вас нет аккаунта?",
  "reg": "Зарегистрироваться"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}
