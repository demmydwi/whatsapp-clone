class CallModel {
  String title;
  String datetime;
  bool callIn;

  CallModel({this.title, this.datetime, this.callIn = false});

  CallModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    datetime = json['datetime'];
    callIn = json['callIn'];
  }

  static List<CallModel> get mockData => [
        CallModel(title: "Istri", datetime: "11.02"),
        CallModel(title: "Bejo", datetime: "11.01"),
        CallModel(title: "Ardo", datetime: "11.00"),
        CallModel(title: "Bapak", datetime: "10.10", callIn: true),
        CallModel(
          title: "Mba",
          datetime: "09.02",
          callIn: true,
        ),
        CallModel(title: "Charles", datetime: "09.01"),
        CallModel(title: "Temen1", datetime: "yesterday"),
        CallModel(title: "Temen2", datetime: "yesterday", callIn: true),
        CallModel(
          title: "Temen3",
          datetime: "yesterday",
          callIn: true,
        ),
        CallModel(title: "Temen4", datetime: "yesterday"),
        CallModel(title: "Temen5", datetime: "yesterday"),
        CallModel(title: "Temen6", datetime: "yesterday", callIn: true),
        CallModel(
          title: "Temen7",
          datetime: "yesterday",
          callIn: true,
        ),
        CallModel(title: "Temen8", datetime: "yesterday"),
        CallModel(title: "Temen9", datetime: "yesterday"),
        CallModel(title: "Temen10", datetime: "yesterday", callIn: true),
        CallModel(
          title: "Temen11",
          datetime: "yesterday",
          callIn: true,
        ),
        CallModel(title: "Temen12", datetime: "yesterday"),
      ];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['datetime'] = this.datetime;
    data['callIn'] = this.callIn;
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CallModel && title == other.title;
}
