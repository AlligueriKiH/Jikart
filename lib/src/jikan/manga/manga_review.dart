import 'package:jikart/jikan_objects.dart';

class MangaReview{
  int _mal_id;
  String _url;
  int _helpful_count;
  String _date;
  MangaReviewer _reviewer;
  String _content;

  MangaReview(
      this._mal_id,
      this._url,
      this._helpful_count,
      this._date,
      this._reviewer,
      this._content);

  factory MangaReview.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var helpful_count = json['helpful_count'];
    var date = json['date'];
    var reviewer = MangaReviewer.fromJson(json['reviewer']);
    var content = json['content'];
    return MangaReview(mal_id, url, helpful_count, date, reviewer, content);
  }

  int get mal_id => _mal_id;
  String get url => _url;
  int get helpful_count => _helpful_count;
  String get date => _date;
  MangaReviewer get reviewer => _reviewer;
  String get content => _content;
}
