import 'package:jikart/jikan_objects.dart';

class Topic {
  int _topicId;
  String _url;
  String _title;
  String _datePosted;
  String _authorName;
  String _authorUrl;
  int _replies;
  Post _lastPost;

  Topic(
      this._topicId,
      this._url,
      this._title,
      this._datePosted,
      this._authorName,
      this._authorUrl,
      this._replies,
      this._lastPost);

  factory Topic.fromJson(Map<String, dynamic> json){
    var topicId = json['topic_id'];
    var url = json['url'];
    var title = json['title'];
    var datePosted = json['date_posted'];
    var authorName = json['author_name'];
    var authorUrl = json['author_url'];
    var replies = json['replies'];
    var lastPost = Post.fromJson(json['last_post']);
    return Topic(topicId, url, title, datePosted, authorName, authorUrl, replies, lastPost);
  }

  int get topicId => _topicId;
  String get url => _url;
  String get title => _title;
  String get datePosted => _datePosted;
  String get authorName => _authorName;
  String get authorUrl => _authorUrl;
  int get replies => _replies;
  Post get lastPost => _lastPost;
}
