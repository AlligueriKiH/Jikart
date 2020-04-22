class AnimeUserUpdate{
  String _username;
  String _url;
  String _image_url;
  int _score;
  String _status;
  int _episodes_seen;
  int _episodes_total;
  String _date;

  AnimeUserUpdate(
      this._username,
      this._url,
      this._image_url,
      this._score,
      this._status,
      this._episodes_seen,
      this._episodes_total,
      this._date);

  factory AnimeUserUpdate.fromJson(Map<String, dynamic> json){
    var username = json['username'];
    var url = json['url'];
    var image_url = json['image_url'];
    var score = json['score'];
    var status = json['status'];
    var episodes_seen = json['episodes_seen'];
    var episodes_total = json['episodes_total'];
    var date = json['date'];
    return AnimeUserUpdate(username, url, image_url, score, status, episodes_seen, episodes_total, date);
  }

  String get username => _username;
  String get url => _url;
  String get image_url => _image_url;
  int get score => _score;
  String get status => _status;
  int get episodes_seen => _episodes_seen;
  int get episodes_total => _episodes_total;
  String get date => _date;
}
