class AnimeReviewer{
  String _url;
  String _imageUrl;
  String _username;
  int _episodesSeen;
  Map<String, dynamic> _scores;

  AnimeReviewer(
      this._url,
      this._imageUrl,
      this._username,
      this._episodesSeen,
      this._scores);

  factory AnimeReviewer.fromJson(Map<String, dynamic> json){
    var url = json['url'];
    var imageUrl = json['image_url'];
    var username = json['username'];
    var episodesSeen = json['episodes_seen'];
    var scores = json['scores'];
    return AnimeReviewer(url, imageUrl, username, episodesSeen, scores);
  }

  String get url => _url;
  String get imageUrl => _imageUrl;
  String get username => _username;
  int get episodesSeen => _episodesSeen;
  Map<String, dynamic> get scores => _scores;
}
