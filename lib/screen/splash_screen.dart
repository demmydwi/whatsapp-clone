import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/model/call_model.dart';
import 'package:tech_task/model/chat_model.dart';
import 'package:tech_task/model/status_model.dart';
import 'package:tech_task/provider/call_provider.dart';
import 'package:tech_task/provider/chat_provider.dart';
import 'package:tech_task/provider/status_provider.dart';
import 'package:tech_task/screen/main/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ChatProvider>(context).chatModels = ChatModel.mockData;
      Provider.of<StatusProvider>(context).statusModels = StatusModel.mockData;
      Provider.of<CallProvider>(context).callModels = CallModel.mockData;
    });

    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.chat,
          color: MyColor.primaryDark,
          size: 52,
        ),
      ),
    );
  }
}
