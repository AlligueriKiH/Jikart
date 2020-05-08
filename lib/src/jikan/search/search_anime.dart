class SearchAnime{
  int _malId;
  String _url;
  String _imageUrl;
  String _title;
  bool _airing;
  String _synopsis;
  String _type;
  int _episodes;
  double _score;
  String _startDate;
  String _endDate;
  int _members;
  String _rated;

  SearchAnime(
      this._malId,
      this._url,
      this._imageUrl,
      this._title,
      this._airing,
      this._synopsis,
      this._type,
      this._episodes,
      this._score,
      this._startDate,
      this._endDate,
      this._members,
      this._rated);

  factory SearchAnime.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var title = json['title'];
    var airing = json['airing'];
    var synopsis = json['synopsis'];
    var type = json['type'];
    var episodes = json['episodes'];
    var score = json['score'] is int ? json['score'].toDouble() : json['score'];
    var startDate = json['start_date'];
    var endDate = json['end_date'];
    var members = json['members'];
    var rated = json['rated'];
    return SearchAnime(malId, url, imageUrl, title, airing, synopsis, type, episodes, score, startDate, endDate, members, rated);
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get title => _title;
  bool get airing => _airing;
  String get synopsis => _synopsis;
  String get type => _type;
  int get episodes => _episodes;
  double get score => _score;
  String get startDate => _startDate;
  String get endDate => _endDate;
  int get members => _members;
  String get rated => _rated;
}
