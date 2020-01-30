
class ChatModel {
  String title;
  String message;
  String datetime;
  bool isSender;
  bool isRead;


  ChatModel({this.title, this.message, this.datetime, this.isSender = false, this.isRead = true});

  ChatModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    message = json['message'];
    datetime = json['datetime'];
  }

  static List<ChatModel > get mockData => [
    ChatModel(title: "Istri", message: "Sudah makan belum mas?", datetime: "11.02"),
    ChatModel(title: "Bejo", message: "Lagi apa dem?", datetime: "11.01"),
    ChatModel(title: "Ardo", message: "Sehat dem, makan siang bareng yoks?", datetime: "11.00"),
    ChatModel(title: "Bapak", message: "Tadi aku sampe jam 10an pak", datetime: "10.10", isSender: true),
    ChatModel(title: "Mba", message: "Haura sehat2 aja kan mba?", datetime: "09.02", isSender: true, isRead: false),
    ChatModel(title: "Charles", message: "Masuk gak mas dem?", datetime: "09.01"),
    ChatModel(title: "Temen1", message: "Lagi apa?", datetime: "yesterday"),
    ChatModel(title: "Temen2", message: "Lagi apa?", datetime: "yesterday", isSender: true),
    ChatModel(title: "Temen3", message: "Lagi apa?", datetime: "yesterday", isSender: true, isRead: false),
    ChatModel(title: "Temen4", message: "Lagi apa?", datetime: "yesterday"),
    ChatModel(title: "Temen5", message: "Lagi apa?", datetime: "yesterday"),
    ChatModel(title: "Temen6", message: "Lagi apa?", datetime: "yesterday", isSender: true),
    ChatModel(title: "Temen7", message: "Lagi apa?", datetime: "yesterday", isSender: true, isRead: false),
    ChatModel(title: "Temen8", message: "Lagi apa?", datetime: "yesterday"),
    ChatModel(title: "Temen9", message: "Lagi apa?", datetime: "yesterday"),
    ChatModel(title: "Temen10", message: "Lagi apa?", datetime: "yesterday", isSender: true),
    ChatModel(title: "Temen11", message: "Lagi apa?", datetime: "yesterday", isSender: true, isRead: false),
    ChatModel(title: "Temen12", message: "Lagi apa?", datetime: "yesterday"),
  ];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['datetime'] = this.datetime;
    data['message'] = this.message;
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ChatModel &&
              title == other.title;

}