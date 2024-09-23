import 'package:flutter_starter/locales/ar.dart';
import 'package:flutter_starter/locales/en.dart';
import 'package:get/get.dart';

class Messages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en': En().messages,
    'ar':Ar().messages,
  };
}