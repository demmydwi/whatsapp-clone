import 'package:flutter/material.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/model/call_model.dart';
import 'package:tech_task/model/chat_model.dart';

class CallItemView extends StatelessWidget {
  final CallModel callModel;

  CallItemView(this.callModel);

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
                Text(
                  callModel.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                  maxLines: 1,
                ),
                Padding(padding: EdgeInsets.only(top: 6)),
                Row(
                  children: <Widget>[
                    callModel.callIn
                        ? Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        Icons.subdirectory_arrow_left,
                        size: 16,
                        color: Colors.red.shade600,
                      ),
                    )
                        : Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Icon(
                        Icons.subdirectory_arrow_right,
                        size: 16,
                        color: MyColor.primary,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        callModel.datetime,
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
                Divider(
                  height: 1,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
          ),
          Icon(Icons.call, color: MyColor.primaryDark, size: 28,)
        ],
      ),
    );
  }
}
