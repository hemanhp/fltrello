import 'package:fltrello/service_locator.dart';
import 'package:fltrello/ui/navigation/app_navigation.dart';
import 'package:fltrello/ui/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Trello extends StatelessWidget {
  const Trello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final navigator = sl<AppNavigator>();

    return MaterialApp(
      title: 'Trello',
      debugShowCheckedModeBanner: false,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      navigatorKey: navigator.key,
      onGenerateRoute: navigator.onGenerateRoute,
      initialRoute: navigator.initialRoute,
    );
  }
}
