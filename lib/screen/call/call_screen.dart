import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/provider/call_provider.dart';
import 'package:tech_task/screen/call/call_item_view.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CallProvider>(
        builder: (context, provider, child) {
          return ListView(
            children:
            provider.callModels.map((item) => CallItemView(item)).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.call,
          color: Colors.white,
        ),
        backgroundColor: MyColor.primaryLight,
      ),
    );
  }
}
