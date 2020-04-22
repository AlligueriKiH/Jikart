class News{
  String _url;
  String _title;
  String _date;
  String _author_name;
  String _author_url;
  String _forum_url;
  String _image_url;
  int _comments;
  String _intro;

  News(
      this._url,
      this._title,
      this._date,
      this._author_name,
      this._author_url,
      this._forum_url,
      this._image_url,
      this._comments,
      this._intro);

  factory News.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var title = json['title'];
    var date = json['date'];
    var author_name = json['author_name'];
    var author_url = json['author_url'];
    var forum_url = json['forum_url'];
    var image_url = json['image_url'];
    var comments = json['comments'];
    var intro = json['intro'];
    return News(url, title, date, author_name, author_url, forum_url, image_url, comments, intro);
  }

  String get url => _url;
  String get title => _title;
  String get date => _date;
  String get author_name => _author_name;
  String get author_url => _author_url;
  String get forum_url => _forum_url;
  String get image_url => _image_url;
  int get comments => _comments;
  String get intro => _intro;
}
