class Episode{
  int _episode_id;
  String _title;
  String _title_japanese;
  String _title_romanji;
  String _aired;
  bool _filler;
  bool _recap;
  String _video_url;
  String _forum_url;

  Episode(this._episode_id,
      this._title,
      this._title_japanese,
      this._title_romanji,
      this._aired,
      this._filler,
      this._recap,
      this._video_url,
      this._forum_url);

  factory Episode.fromJson(Map<String, dynamic> json){
    var episode_id = json['episode_id'];
    var title = json['title'];
    var title_japanese = json['title_japanese'];
    var title_romanji = json['title_romanji'];
    var aired = json['aired'];
    var filler = json['filler'];
    var recap = json['recap'];
    var video_url = json['video_url'];
    var forum_url = json['forum_url'];
    return Episode(
      episode_id,
      title,
      title_japanese,
      title_romanji,
      aired,
      filler,
      recap,
      video_url,
      forum_url);
  }

  int get episode_id => _episode_id;
  String get title => _title;
  String get title_japanese => _title_japanese;
  String get title_romanji => _title_romanji;
  String get aired => _aired;
  bool get filler => _filler;
  bool get recap => _recap;
  String get video_url => _video_url;
  String get forum_url => _forum_url;
}
