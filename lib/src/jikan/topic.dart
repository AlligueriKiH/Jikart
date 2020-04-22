import 'package:jikart/jikan_objects.dart';

class Topic {
  int _topic_id;
  String _url;
  String _title;
  String _date_posted;
  String _author_name;
  String _author_url;
  int _replies;
  Post _last_post;

  Topic(
      this._topic_id,
      this._url,
      this._title,
      this._date_posted,
      this._author_name,
      this._author_url,
      this._replies,
      this._last_post);

  factory Topic.fromJson(Map<String, dynamic> json){
    var topic_id = json['topic_id'];
    var url = json['url'];
    var title = json['title'];
    var date_posted = json['date_posted'];
    var author_name = json['author_name'];
    var author_url = json['author_url'];
    var replies = json['replies'];
    var last_post = Post.fromJson(json['last_post']);
    return Topic(topic_id, url, title, date_posted, author_name, author_url, replies, last_post);
  }

  int get topic_id => _topic_id;
  String get url => _url;
  String get title => _title;
  String get date_posted => _date_posted;
  String get author_name => _author_name;
  String get author_url => _author_url;
  int get replies => _replies;
  Post get last_post => _last_post;
}
