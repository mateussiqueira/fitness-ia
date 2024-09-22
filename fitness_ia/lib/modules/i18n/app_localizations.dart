import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appTitle': 'Internationalization Demo',
      'welcomeMessage': 'Welcome to our internationalized app!',
    },
    'pt': {
      'appTitle': 'Demonstração de Internacionalização',
      'welcomeMessage': 'Bem-vindo ao nosso app internacionalizado!',
    },
  };

  String get appTitle {
    return _localizedValues[locale.languageCode]!['appTitle'] ?? '';
  }

  String get welcomeMessage {
    return _localizedValues[locale.languageCode]!['welcomeMessage'] ?? '';
  }
}
