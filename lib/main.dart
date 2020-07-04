import 'package:danisdoc/view/welcome/notifiers/fadeAnimationNotifier.dart';
import 'package:danisdoc/view/welcome/pages/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Alignment a = Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DocExpire',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: MultiProvider(
          providers: [
            ListenableProvider<FadeAnimationNotifier>(
                create: (_) => FadeAnimationNotifier(a)),
          ],
          child: WelcomeScreen(),
        ));
  }
}
