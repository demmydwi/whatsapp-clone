import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/component/color.dart';
import 'package:tech_task/provider/status_provider.dart';
import 'package:tech_task/screen/status/status_item_view.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<StatusProvider>(
        builder: (context, provider, child) {
          return ListView(
            children:
            provider.statusModels.map((item) => StatusItemView(item)).toList(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        backgroundColor: MyColor.primaryLight,
      ),
    );
  }
}
