class Post{
  String _url;
  String _author_name;
  String _author_url;
  String _date_posted;

  Post(
      this._url,
      this._author_name,
      this._author_url,
      this._date_posted);

  factory Post.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var author_name = json['author_name'];
    var author_url = json['author_url'];
    var date_posted = json['date_posted'];
    return Post(url, author_name, author_url, date_posted);
  }

  String get url => _url;
  String get author_name => _author_name;
  String get author_url => _author_url;
  String get date_posted => _date_posted;
}
