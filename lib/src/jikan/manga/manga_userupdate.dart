class MangaUserUpdate{
  String _username;
  String _url;
  String _imageUrl;
  int _score;
  String _status;
  int _volumesRead;
  int _volumesTotal;
  int _chaptersRead;
  int _chaptersTotal;
  String _date;

  MangaUserUpdate(
      this._username,
      this._url,
      this._imageUrl,
      this._score,
      this._status,
      this._volumesRead,
      this._volumesTotal,
      this._chaptersRead,
      this._chaptersTotal,
      this._date);

  factory MangaUserUpdate.fromJson(Map<String, dynamic> json){
    var username = json['username'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var score = json['score'];
    var status = json['status'];
    var volumesRead = json['volumes_read'];
    var volumesTotal = json['volumes_total'];
    var chaptersRead = json['chapters_read'];
    var chaptersTotal = json['chapters_total'];
    var date = json['date'];
    return MangaUserUpdate(username, url, imageUrl, score, status, volumesRead, volumesTotal, chaptersRead, chaptersTotal, date);
  }

  String get username => _username;
  String get url => _url;
  String get imageUrl => _imageUrl;
  int get score => _score;
  String get status => _status;
  int get volumesRead => _volumesRead;
  int get volumesTotal => _volumesTotal;
  int get chaptersRead => _chaptersRead;
  int get chaptersTotal => _chaptersTotal;
  String get date => _date;
}
