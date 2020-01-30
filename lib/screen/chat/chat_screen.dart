import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/model/chat_model.dart';
import 'package:tech_task/provider/chat_provider.dart';

import 'chat_item_view.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Consumer<ChatProvider>(
        builder: (context, provider, child) {
          return ListView(
            children:
                provider.chatModels.map((item) => ChatItemView(item)).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
//          Provider.of<ChatProvider>(context).anythingElse = [];
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: MyColor.primaryLight,
      ),
    );
  }
}
