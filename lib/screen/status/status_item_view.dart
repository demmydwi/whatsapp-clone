import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/model/chat_model.dart';
import 'package:tech_task/model/status_model.dart';

class StatusItemView extends StatelessWidget {
  final StatusModel statusModel;

  StatusItemView(this.statusModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: MyColor.primaryLight,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MyColor.primaryLight, width: 1)),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blueGrey.shade200,
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.bottomCenter,
                child: Icon(
                  Icons.person,
                  size: 36,
                  color: Colors.white,
                ),
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
                    Text(
                      statusModel.title,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      maxLines: 1,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 6)),
                Text(
                  statusModel.datetime,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  maxLines: 1,
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
