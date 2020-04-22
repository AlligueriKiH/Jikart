class AnimeReviewer{
  String _url;
  String _image_url;
  String _username;
  int _episodes_seen;
  Map<String, dynamic> _scores;

  AnimeReviewer(
      this._url,
      this._image_url,
      this._username,
      this._episodes_seen,
      this._scores);

  factory AnimeReviewer.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var image_url = json['image_url'];
    var username = json['username'];
    var episodes_seen = json['episodes_seen'];
    var scores = json['scores'];
    return AnimeReviewer(url, image_url, username, episodes_seen, scores);
  }

  String get url => _url;
  String get image_url => _image_url;
  String get username => _username;
  int get episodes_seen => _episodes_seen;
  Map<String, dynamic> get scores => _scores;
}
