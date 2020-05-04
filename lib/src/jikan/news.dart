class News{
  String _url;
  String _title;
  String _date;
  String _authorName;
  String _authorUrl;
  String _forumUrl;
  String _imageUrl;
  int _comments;
  String _intro;

  News(
      this._url,
      this._title,
      this._date,
      this._authorName,
      this._authorUrl,
      this._forumUrl,
      this._imageUrl,
      this._comments,
      this._intro);

  factory News.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var title = json['title'];
    var date = json['date'];
    var authorName = json['author_name'];
    var authorUrl = json['author_url'];
    var forumUrl = json['forum_url'];
    var imageUrl = json['image_url'];
    var comments = json['comments'];
    var intro = json['intro'];
    return News(url, title, date, authorName, authorUrl, forumUrl, imageUrl, comments, intro);
  }

  String get url => _url;
  String get title => _title;
  String get date => _date;
  String get authorName => _authorName;
  String get authorUrl => _authorUrl;
  String get forumUrl => _forumUrl;
  String get imageUrl => _imageUrl;
  int get comments => _comments;
  String get intro => _intro;
}
