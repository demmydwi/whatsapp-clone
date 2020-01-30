import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/model/chat_model.dart';
import 'package:tech_task/provider/chat_provider.dart';
import 'package:tech_task/screen/call/call_screen.dart';
import 'package:tech_task/screen/chat/chat_screen.dart';
import 'package:tech_task/screen/status/status_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColor.primaryDark,
          actions: <Widget>[
            InkWell(
              onTap: (){

              },
              child:
              Padding(padding: EdgeInsets.all(12), child: Icon(
                Icons.search,
                color: Colors.white,
              ),),
            ),

            InkWell(
              onTap: (){

              },
              child:
              Padding(padding: EdgeInsets.all(12), child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),),
            ),
            Padding(padding: EdgeInsets.only(right: 12))
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
          title: Text(
            'WhatsApp Clone',
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
