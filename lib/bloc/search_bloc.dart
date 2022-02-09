import 'package:gst_in/model/list_users.dart';
import 'package:gst_in/repositoy/repository.dart';
import 'package:rxdart/subjects.dart';

class SearchBloc {
  final HttpServices _httpServices = HttpServices();
  final BehaviorSubject<ListUsers> _subject = BehaviorSubject<ListUsers>();

  search(String value) async {
    ListUsers response = await _httpServices.search();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ListUsers> get subject => _subject;
}

final searchBloc = SearchBloc();
