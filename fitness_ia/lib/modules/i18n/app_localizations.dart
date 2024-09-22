import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'titleIntroduction': 'Internationalization Demo',
      'welcomeMessageIntroduction': 'Welcome to our internationalized app!',
      'buttonTitleIntroduction': 'Start',
    },
    'pt': {
      'titleIntroduction': 'Demonstração de Internacionalização',
      'welcomeMessageIntroduction':
          'Bem-vindo ao nosso app internacionalizado!',
      'buttonTitleIntroduction': 'Começar',
    },
  };

  String get titleIntroduction {
    return 'sxsx';
  }

  String get welcomeMessageIntroduction {
    return _localizedValues[locale.languageCode]![
            'welcomeMessageIntroduction'] ??
        '';
  }

  String get buttonTitleIntroduction {
    return _localizedValues[locale.languageCode]!['buttonTitleIntroduction'] ??
        '';
  }
}
