class MessageDetailModel {
  String? hospital;
  String? jobRequestedUser;
  String? subject;
  String? requestDate;
  String? state;
  String? level;
  String? requestType;
  List<Messages>? messages;

  MessageDetailModel(
      {this.hospital,
      this.jobRequestedUser,
      this.subject,
      this.requestDate,
      this.state,
      this.level,
      this.requestType,
      this.messages});

  MessageDetailModel.fromJson(Map<String, dynamic> json) {
    hospital = json['hospital'];
    jobRequestedUser = json['job_requested_user'];
    subject = json['subject'];
    requestDate = json['request_date'];
    state = json['state'];
    level = json['level'];
    requestType = json['request_type'];
    if (json['messages'] != null) {
      messages = <Messages>[];
      json['messages'].forEach((v) {
        messages!.add(new Messages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hospital'] = this.hospital;
    data['job_requested_user'] = this.jobRequestedUser;
    data['subject'] = this.subject;
    data['request_date'] = this.requestDate;
    data['state'] = this.state;
    data['level'] = this.level;
    data['request_type'] = this.requestType;
    if (this.messages != null) {
      data['messages'] = this.messages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Messages {
  String? userName;
  String? message;
  String? attach;
  String? date;

  Messages({this.userName, this.message, this.attach, this.date});

  Messages.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    message = json['message'];
    attach = json['attach'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['message'] = this.message;
    data['attach'] = this.attach;
    data['date'] = this.date;
    return data;
  }
}
