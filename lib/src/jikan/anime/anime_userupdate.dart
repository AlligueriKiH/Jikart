class AnimeUserUpdate{
  String _username;
  String _url;
  String _imageUrl;
  int _score;
  String _status;
  int _episodesSeen;
  int _episodesTotal;
  String _date;

  AnimeUserUpdate(
      this._username,
      this._url,
      this._imageUrl,
      this._score,
      this._status,
      this._episodesSeen,
      this._episodesTotal,
      this._date);

  factory AnimeUserUpdate.fromJson(Map<String, dynamic> json){
    var username = json['username'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var score = json['score'];
    var status = json['status'];
    var episodesSeen = json['episodes_seen'];
    var episodesTotal = json['episodes_total'];
    var date = json['date'];
    return AnimeUserUpdate(username, url, imageUrl, score, status, episodesSeen, episodesTotal, date);
  }

  String get username => _username;
  String get url => _url;
  String get imageUrl => _imageUrl;
  int get score => _score;
  String get status => _status;
  int get episodesSeen => _episodesSeen;
  int get episodesTotal => _episodesTotal;
  String get date => _date;
}
