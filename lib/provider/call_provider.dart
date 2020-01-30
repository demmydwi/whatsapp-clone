import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/model/call_model.dart';
import 'package:tech_task/model/status_model.dart';

class CallProvider with ChangeNotifier {
  List<CallModel> _callModels;

  List<CallModel> get callModels => _callModels;

  set callModels(List<CallModel> newValue) {
    this._callModels = newValue;
    notifyListeners();
  }

}
