import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/model/status_model.dart';

class StatusProvider with ChangeNotifier {
  List<StatusModel> _statusModels;

  List<StatusModel> get statusModels => _statusModels;

  set statusModels(List<StatusModel> newValue) {
    this._statusModels = newValue;
    notifyListeners();
  }

}
