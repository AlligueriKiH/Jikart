import 'package:jikart/jikan_objects.dart';

class AnimeReview{
  int _mal_id;
  String _url;
  int _helpful_count;
  String _date;
  AnimeReviewer _reviewer;
  String _content;

  AnimeReview(
      this._mal_id,
      this._url,
      this._helpful_count,
      this._date,
      this._reviewer,
      this._content);

  factory AnimeReview.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var helpful_count = json['helpful_count'];
    var date = json['date'];
    var reviewer = AnimeReviewer.fromJson(json['reviewer']);
    var content = json['content'];
    return AnimeReview(mal_id, url, helpful_count, date, reviewer, content);
  }

  int get mal_id => _mal_id;
  String get url => _url;
  int get helpful_count => _helpful_count;
  String get date => _date;
  AnimeReviewer get reviewer => _reviewer;
  String get content => _content;
}
