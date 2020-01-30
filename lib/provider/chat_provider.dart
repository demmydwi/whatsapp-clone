import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/model/chat_model.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> _chatModels;

  List<ChatModel> get chatModels => _chatModels;

  set chatModels(List<ChatModel> newValue) {
    this._chatModels = newValue;
    notifyListeners();
  }
  List<ChatModel> _anythingElse;

  List<ChatModel> get anythingElse => anythingElse;

  set anythingElse(List<ChatModel> newValue) {
    this._anythingElse = newValue;

    chatModels = [];

    notifyListeners();
  }

  void init(){
    chatModels = [];
    anythingElse = [];
    notifyListeners();
  }

}
