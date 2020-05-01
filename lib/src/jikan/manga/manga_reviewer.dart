class MangaReviewer{
  String _url;
  String _image_url;
  String _username;
  int _chapters_read;
  Map<String, dynamic> _scores;

  MangaReviewer(
      this._url,
      this._image_url,
      this._username,
      this._chapters_read,
      this._scores);

  factory MangaReviewer.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var image_url = json['image_url'];
    var username = json['username'];
    var chapters_read = json['chapters_read'];
    var scores = json['scores'];
    return MangaReviewer(url, image_url, username, chapters_read, scores);
  }

  String get url => _url;
  String get image_url => _image_url;
  String get username => _username;
  int get chapters_read => _chapters_read;
  Map<String, dynamic> get scores => _scores;
}
