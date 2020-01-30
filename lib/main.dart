import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/provider/call_provider.dart';
import 'package:tech_task/provider/chat_provider.dart';
import 'package:tech_task/provider/status_provider.dart';
import 'package:tech_task/screen/main/main_screen.dart';
import 'package:tech_task/screen/splash_screen.dart';

void main(){

  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(
        create: (_) => ChatProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => StatusProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => CallProvider(),
      ),
    ],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: MyColor.primary,
        primaryColorDark: MyColor.primaryDark,
        primaryColorLight: MyColor.primaryLight,
        backgroundColor: Colors.white,
        accentColor: MyColor.secondary,
        accentColorBrightness: Brightness.light,
        primaryColorBrightness: Brightness.dark,
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        primaryTextTheme: TextTheme(),
        accentTextTheme: TextTheme(),
      ),
      home: SplashScreen(),
    );
  }
}
