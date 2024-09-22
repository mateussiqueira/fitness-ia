import 'package:fitness_ia/extension/LocalizationExtension.dart';
import 'package:flutter/material.dart';
import 'modules/i18n/app_localizations.dart';
import 'modules/i18n/app_localizations_delegate.dart'; // Importe a classe AppLocalizations

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


    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(context.loc.titleIntroduction ?? 'Default Title'),
          Text(context.loc.welcomeMessageIntroduction ?? 'Default Welcome Message'),
          ElevatedButton(
            onPressed: () {},
            child: Text(context.loc.buttonTitleIntroduction ?? 'Default Button Text'),
          ),
        ],
      ),
    );
  }
}
