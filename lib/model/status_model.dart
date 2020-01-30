
class StatusModel {
  String title;
  String datetime;
  bool isSender;
  bool isRead;

  StatusModel({this.title, this.datetime});

  StatusModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    datetime = json['datetime'];
  }

  static List<StatusModel > get mockData => [
    StatusModel(title: "Istri", datetime: "11.02"),
    StatusModel(title: "Bejo",  datetime: "11.01"),
    StatusModel(title: "Ardo", datetime: "11.00"),
    StatusModel(title: "Bapak", datetime: "10.10"),
    StatusModel(title: "Mba", datetime: "09.02"),
    StatusModel(title: "Charles", datetime: "09.01"),
    StatusModel(title: "Temen1", datetime: "yesterday"),
    StatusModel(title: "Temen2", datetime: "yesterday"),
    StatusModel(title: "Temen3", datetime: "yesterday"),
    StatusModel(title: "Temen4", datetime: "yesterday"),
    StatusModel(title: "Temen5", datetime: "yesterday"),
    StatusModel(title: "Temen6", datetime: "yesterday"),
    StatusModel(title: "Temen7", datetime: "yesterday"),
    StatusModel(title: "Temen8", datetime: "yesterday"),
    StatusModel(title: "Temen9", datetime: "yesterday"),
    StatusModel(title: "Temen10", datetime: "yesterday"),
    StatusModel(title: "Temen11", datetime: "yesterday"),
    StatusModel(title: "Temen12", datetime: "yesterday"),
  ];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['datetime'] = this.datetime;
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is StatusModel &&
              title == other.title;

}