import 'package:flutter/material.dart';
import 'modules/i18n/app_localizations.dart'; // Importe a classe AppLocalizations

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      supportedLocales: const [
        Locale('en'), // Inglês
        Locale('pt'), // Português
      ],
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
      ],
      home: const TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(locale?.titleIntroduction ?? 'Default Title'),
          Text(locale?.welcomeMessageIntroduction ?? 'Default Welcome Message'),
          ElevatedButton(
            onPressed: () {},
            child: Text(locale?.buttonTitleIntroduction ?? 'Default Button Text'),
          ),
        ],
      ),
    );
  }
}


class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'pt'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}