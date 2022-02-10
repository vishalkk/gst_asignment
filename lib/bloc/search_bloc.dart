 import 'package:gst_in/model/list_users.dart';
import 'package:gst_in/model/user_model.dart';
// import 'package:gst_in/model/model.dart';
import 'package:gst_in/repositoy/repository.dart';
import 'package:rxdart/subjects.dart';

class SearchBloc {
  final HttpServices _httpServices = HttpServices();
  final BehaviorSubject<UserModel> _subject = BehaviorSubject<UserModel>();

  search(String value) async {
    UserModel response = await _httpServices.search(value);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<UserModel> get subject => _subject;
}

final searchBloc = SearchBloc();
