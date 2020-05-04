import 'package:jikart/jikan_objects.dart';

class MangaReview{
  int _malId;
  String _url;
  int _helpfulCount;
  String _date;
  MangaReviewer _reviewer;
  String _content;

  MangaReview(
      this._malId,
      this._url,
      this._helpfulCount,
      this._date,
      this._reviewer,
      this._content);

  factory MangaReview.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var helpfulCount = json['helpful_count'];
    var date = json['date'];
    var reviewer = MangaReviewer.fromJson(json['reviewer']);
    var content = json['content'];
    return MangaReview(malId, url, helpfulCount, date, reviewer, content);
  }

  int get malId => _malId;
  String get url => _url;
  int get helpfulCount => _helpfulCount;
  String get date => _date;
  MangaReviewer get reviewer => _reviewer;
  String get content => _content;
}
