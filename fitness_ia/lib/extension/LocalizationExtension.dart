import 'package:flutter/material.dart';

import '../modules/i18n/app_localizations.dart';


extension LocalizationExtension on BuildContext {
  AppLocalizations get loc {
    return AppLocalizations.of(this)!;
  }
}