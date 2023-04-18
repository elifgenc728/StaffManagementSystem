class JobsModel {
  int? jobId;
  int? userId;
  String? name;
  String? institute;
  String? date;
  String? time;
  String? subject;

  JobsModel(
      {this.jobId,
      this.userId,
      this.name,
      this.institute,
      this.date,
      this.time,
      this.subject});

  JobsModel.fromJson(Map<String, dynamic> json) {
    jobId = json['jobId'];
    userId = json['userId'];
    name = json['name'];
    institute = json['institute'];
    date = json['date'];
    time = json['time'];
    subject = json['subject'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jobId'] = this.jobId;
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['institute'] = this.institute;
    data['date'] = this.date;
    data['time'] = this.time;
    data['subject'] = this.subject;
    return data;
  }
}
