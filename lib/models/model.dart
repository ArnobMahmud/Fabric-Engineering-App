class Resource {
  int? id;
  String? date;
  String? discussedTopics;
  String? driveLink;
  String? lecturer;

  Resource({
    this.id,
    this.date,
    this.discussedTopics,
    this.driveLink,
    this.lecturer,
  });

  Resource.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    discussedTopics = json['discussedTopics'];
    driveLink = json['driveLink'];
    lecturer = json['lecturer'];
  }
}

class Year {
  String? nav;
  String? name;

  Year({
    this.name,
    this.nav,
  });
}

class Course {
  int? id;
  String? nav;
  String? name;
  String? courseCode;
  String? lecturer;
  String? details;

  Course({
    this.id,
    this.name,
    this.nav,
    this.courseCode,
    this.lecturer,
  });
}

class Category {
  String? title;
  String? subTitle;
  String? imgData;
  String? nav;

  Category({
    this.imgData,
    this.subTitle,
    this.title,
    this.nav,
  });
}

class Exams {
  String? title;
  String? imgData;
  String? nav;

  Exams({
    this.imgData,
    this.title,
    this.nav,
  });
}

class Routine {
  String? name;
  List<Semester>? semester;

  Routine({
    this.name,
    this.semester,
  });
}

class Semester {
  String? name;
  String? date;
  String? code;
  String? time;

  Semester({
    this.code,
    this.date,
    this.name,
    this.time,
  });
}
