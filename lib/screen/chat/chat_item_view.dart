import 'package:flutter/material.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/model/chat_model.dart';

class ChatItemView extends StatelessWidget {
  final ChatModel chatModel;

  ChatItemView(this.chatModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.blueGrey.shade200,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.person,
                size: 36,
                color: Colors.white,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 4)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        chatModel.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      chatModel.datetime,
                      style: TextStyle(
                          color: chatModel.isSender
                              ? Colors.grey.shade500
                              : chatModel.isRead
                                  ? Colors.grey.shade500
                                  : MyColor.primaryLight,
                          fontSize: 13),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 6)),
                Row(
                  children: <Widget>[
                    chatModel.isSender
                        ? Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.check,
                              size: 16,
                              color: chatModel.isRead
                                  ? MyColor.secondary
                                  : Colors.grey,
                            ),
                          )
                        : SizedBox.shrink(),
                    Expanded(
                      child: Text(
                        chatModel.message,
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                        maxLines: 1,
                      ),
                    ),
                    chatModel.isSender
                        ? SizedBox.shrink()
                        : CircleAvatar(
                            radius: 8,
                            backgroundColor: MyColor.primaryLight,
                            child: Text(
                              "1",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          )
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Divider(
                  height: 1,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
