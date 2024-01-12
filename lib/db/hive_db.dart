import 'package:hive_flutter/hive_flutter.dart';

class FavLectureDB {
  List favLecture = [];
  final myBox = Hive.box('mybox');

  void createInitialData() {
    favLecture = [
      ['Flutter', 'Framework', false],
      ['MERN', 'Tech stack', false],
    ];
  }

  void loadData() {
    favLecture = myBox.get('favlec');
  }

  void updateData() {
    myBox.put("favlec", favLecture);
  }
}