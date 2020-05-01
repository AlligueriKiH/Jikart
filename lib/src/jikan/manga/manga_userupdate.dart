class MangaUserUpdate{
  String _username;
  String _url;
  String _image_url;
  int _score;
  String _status;
  int _volumes_read;
  int _volumes_total;
  int _chapters_read;
  int _chapters_total;
  String _date;

  MangaUserUpdate(
      this._username,
      this._url,
      this._image_url,
      this._score,
      this._status,
      this._volumes_read,
      this._volumes_total,
      this._chapters_read,
      this._chapters_total,
      this._date);

  factory MangaUserUpdate.fromJson(Map<String, dynamic> json){
    var username = json['username'];
    var url = json['url'];
    var image_url = json['image_url'];
    var score = json['score'];
    var status = json['status'];
    var volumes_read = json['volumes_read'];
    var volumes_total = json['volumes_total'];
    var chapters_read = json['chapters_read'];
    var chapters_total = json['chapters_total'];
    var date = json['date'];
    return MangaUserUpdate(username, url, image_url, score, status, volumes_read, volumes_total, chapters_read, chapters_total, date);
  }

  String get username => _username;
  String get url => _url;
  String get image_url => _image_url;
  int get score => _score;
  String get status => _status;
  int get volumes_read => _volumes_read;
  int get volumes_total => _volumes_total;
  int get chapters_read => _chapters_read;
  int get chapters_total => _chapters_total;
  String get date => _date;
}
