class Episode{
  int _episodeId;
  String _title;
  String _titleJapanese;
  String _titleRomanji;
  String _aired;
  bool _filler;
  bool _recap;
  String _videoUrl;
  String _forumUrl;

  Episode(this._episodeId,
      this._title,
      this._titleJapanese,
      this._titleRomanji,
      this._aired,
      this._filler,
      this._recap,
      this._videoUrl,
      this._forumUrl);

  factory Episode.fromJson(Map<String, dynamic> json){
    var episodeId = json['episode_id'];
    var title = json['title'];
    var titleJapanese = json['title_japanese'];
    var titleRomanji = json['title_romanji'];
    var aired = json['aired'];
    var filler = json['filler'];
    var recap = json['recap'];
    var videoUrl = json['video_url'];
    var forumUrl = json['forum_url'];
    return Episode(
      episodeId,
      title,
      titleJapanese,
      titleRomanji,
      aired,
      filler,
      recap,
      videoUrl,
      forumUrl);
  }

  int get episodeId => _episodeId;
  String get title => _title;
  String get titleJapanese => _titleJapanese;
  String get titleRomanji => _titleRomanji;
  String get aired => _aired;
  bool get filler => _filler;
  bool get recap => _recap;
  String get videoUrl => _videoUrl;
  String get forumUrl => _forumUrl;
}
