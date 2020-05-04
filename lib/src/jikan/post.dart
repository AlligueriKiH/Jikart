class Post{
  String _url;
  String _authorName;
  String _authorUrl;
  String _datePosted;

  Post(
      this._url,
      this._authorName,
      this._authorUrl,
      this._datePosted);

  factory Post.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var authorName = json['author_name'];
    var authorUrl = json['author_url'];
    var datePosted = json['date_posted'];
    return Post(url, authorName, authorUrl, datePosted);
  }

  String get url => _url;
  String get authorName => _authorName;
  String get authorUrl => _authorUrl;
  String get datePosted => _datePosted;
}
