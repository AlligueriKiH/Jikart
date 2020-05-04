import 'package:jikart/jikan_objects.dart';

class AnimeReview{
  int _malId;
  String _url;
  int _helpfulCount;
  String _date;
  AnimeReviewer _reviewer;
  String _content;

  AnimeReview(
      this._malId,
      this._url,
      this._helpfulCount,
      this._date,
      this._reviewer,
      this._content);

  factory AnimeReview.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var helpfulCount = json['helpful_count'];
    var date = json['date'];
    var reviewer = AnimeReviewer.fromJson(json['reviewer']);
    var content = json['content'];
    return AnimeReview(malId, url, helpfulCount, date, reviewer, content);
  }

  int get malId => _malId;
  String get url => _url;
  int get helpfulCount => _helpfulCount;
  String get date => _date;
  AnimeReviewer get reviewer => _reviewer;
  String get content => _content;
}
