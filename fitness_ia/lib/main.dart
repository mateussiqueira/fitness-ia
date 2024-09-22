import 'package:fitness_ia/modules/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'modules/i18n/app_localizations_delegate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
      locale: AppLocalizations.of(context)?.locale,
      supportedLocales: const [
        Locale('en'),
        Locale('pt'),
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
    // print(locale?.titleIntroduction);

    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text(locale?.titleIntroduction ?? ''),
          // Text(locale?.welcomeMessageIntroduction ?? ''),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text(
          //     locale?.titleIntroduction ?? 'kmkmk',
          //   ),
          // ),
        ],
      ),
    );
  }
}
