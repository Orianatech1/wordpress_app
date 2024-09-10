import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class LanguageConfig {
  //Initial Language
  static const Locale startLocale = Locale('en', 'US');

  //Language if any error happens
  static const Locale fallbackLocale = Locale('en', 'US');

  // Languages
  static const Map<String, List<String>> languages = {
    //language_name : [language_code, country_code(Capital format)]
    "English": ['en', 'US'],
    "Hindi": ['hi', 'IN'],
    
    
  };



  // Local Messages for time ago
  static void setLocaleMessagesForTimeAgo() {
    final List<String> localesString = languages.values.map((e) => Locale(e.first, e.last).toString()).toList();

    //must be align with languages
    timeago.setLocaleMessages(localesString[0], timeago.EnMessages());
  

    timeago.setLocaleMessages(localesString[1], timeago.HiMessages());
   
  }

  // Don't edit this
  static List<Locale> supportedLocales =
      languages.values.map((e) => Locale(e.first, e.last,)).toList();
}
