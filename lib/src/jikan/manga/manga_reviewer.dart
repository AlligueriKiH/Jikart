class MangaReviewer{
  String _url;
  String _imageUrl;
  String _username;
  int _chaptersRead;
  Map<String, dynamic> _scores;

  MangaReviewer(
      this._url,
      this._imageUrl,
      this._username,
      this._chaptersRead,
      this._scores);

  factory MangaReviewer.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var imageUrl = json['image_url'];
    var username = json['username'];
    var chaptersRead = json['chapters_read'];
    var scores = json['scores'];
    return MangaReviewer(url, imageUrl, username, chaptersRead, scores);
  }

  String get url => _url;
  String get imageUrl => _imageUrl;
  String get username => _username;
  int get chaptersRead => _chaptersRead;
  Map<String, dynamic> get scores => _scores;
}
