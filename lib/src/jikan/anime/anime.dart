import 'package:jikart/jikan_objects.dart';

class Anime{
  int _malId;
  String _url;
  String _imageUrl;
  String _trailerUrl;
  String _title;
  String _titleEnglish;
  String _titleJapanese;
  List<String> _titleSynonyms;
  String _type;
  String _source;
  int _episodes;
  String _status;
  bool _airing;
  Period _aired;
  String _duration;
  String _rating;
  double _score;
  int _scoredBy;
  int _rank;
  int _popularity;
  int _members;
  int _favorities;
  String _synopsis;
  String _background;
  String _premiered;
  String _broadcast;
  Map<String, List<Related>> _related;
  List<Producer> _producers;
  List<Producer> _licensors;
  List<Producer> _studios;
  List<Genre> _genres;
  List<String> _openingThemes;
  List<String> _endingThemes;


  Anime(
      this._malId,
      this._url,
      this._imageUrl,
      this._trailerUrl,
      this._title,
      this._titleEnglish,
      this._titleJapanese,
      this._titleSynonyms,
      this._type,
      this._source,
      this._episodes,
      this._status,
      this._airing,
      this._aired,
      this._duration,
      this._rating,
      this._score,
      this._scoredBy,
      this._rank,
      this._popularity,
      this._members,
      this._favorities,
      this._synopsis,
      this._background,
      this._premiered,
      this._broadcast,
      this._related,
      this._producers,
      this._licensors,
      this._studios,
      this._genres,
      this._openingThemes,
      this._endingThemes);

  factory Anime.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var trailerUrl = json['trailer_url'];
    var title = json['title'];
    var titleEnglish = json['title_english'];
    var titleJapanese = json['title_japanese'];
    var titleSynonyms = (json['title_synonyms'] as List)?.map((e) => e as String)?.toList();
    var type = json['type'];
    var source = json['source'];
    var episodes = json['episodes'];
    var status = json['status'];
    var airing = json['airing'];
    var aired = Period.fromJson(json['aired']);
    var duration = json['duration'];
    var rating = json['rating'];
    var score = json['score'] is int ? json['score'].toDouble() : json['score'];
    var scoredBy = json['scored_by'];
    var rank = json['rank'];
    var popularity = json['popularity'];
    var members = json['members'];
    var favorities = json['favorities'];
    var synopsis = json['synopsis'];
    var background = json['background'];
    var premiered = json['premiered'];
    var broadcast = json['broadcast'];
    var related = <String, List<Related>>{};
    json['related']?.forEach((k, v) {
      var temp = <Related>[];
      v?.forEach((anime) => temp.add(Related.fromJson(anime)));
      related.putIfAbsent(k, () => temp);
    });
    var producers = List.generate(json['producers'].length, (i) => Producer.fromJson(json['producers'][i]));
    var licensors = List.generate(json['licensors'].length, (i) => Producer.fromJson(json['licensors'][i]));
    var studios = List.generate(json['studios'].length, (i) => Producer.fromJson(json['studios'][i]));
    var genres = List.generate(json['genres'].length, (i) => Genre.fromJson(json['genres'][i]));
    var openingThemes = (json['opening_themes'] as List)?.map((e) => e as String)?.toList();
    var endingThemes = (json['ending_themes'] as List)?.map((e) => e as String)?.toList();
    return Anime(
      malId,
      url,
      imageUrl,
      trailerUrl,
      title,
      titleEnglish,
      titleJapanese,
      titleSynonyms,
      type,
      source,
      episodes,
      status,
      airing,
      aired,
      duration,
      rating,
      score,
      scoredBy,
      rank,
      popularity,
      members,
      favorities,
      synopsis,
      background,
      premiered,
      broadcast,
      related,
      producers,
      licensors,
      studios,
      genres,
      openingThemes,
      endingThemes
    );
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get trailerUrl => _trailerUrl;
  String get title => _title;
  String get titleEnglish => _titleEnglish;
  String get titleJapanese => _titleJapanese;
  List<String> get titleSynonyms => _titleSynonyms;
  String get type => _type;
  String get source => _source;
  int get episodes => _episodes;
  String get status => _status;
  bool get airing => _airing;
  Period get aired => _aired;
  String get duration => _duration;
  String get rating => _rating;
  double get score => _score;
  int get scoredBy => _scoredBy;
  int get rank => _rank;
  int get popularity => _popularity;
  int get members => _members;
  int get favorities => _favorities;
  String get synopsis => _synopsis;
  String get background => _background;
  String get premiered => _premiered;
  String get broadcast => _broadcast;
  Map<String, List<Related>> get related => _related;
  List<Producer> get producers => _producers;
  List<Producer> get licensors => _licensors;
  List<Producer> get studios => _studios;
  List<Genre> get genres => _genres;
  List<String> get openingThemes => _openingThemes;
  List<String> get endingThemes => _endingThemes;
}
