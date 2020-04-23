import 'package:jikart/jikan_objects.dart';

class Anime{
  int _mal_id;
  String _url;
  String _image_url;
  String _trailer_url;
  String _title;
  String _title_english;
  String _title_japanese;
  List<String> _title_synonyms;
  String _type;
  String _source;
  int _episodes;
  String _status;
  bool _airing;
  Period _aired;
  String _duration;
  String _rating;
  double _score;
  int _scored_by;
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
  List<String> _opening_themes;
  List<String> _ending_themes;


  Anime(
      this._mal_id,
      this._url,
      this._image_url,
      this._trailer_url,
      this._title,
      this._title_english,
      this._title_japanese,
      this._title_synonyms,
      this._type,
      this._source,
      this._episodes,
      this._status,
      this._airing,
      this._aired,
      this._duration,
      this._rating,
      this._score,
      this._scored_by,
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
      this._opening_themes,
      this._ending_themes);

  factory Anime.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var image_url = json['image_url'];
    var trailer_url = json['trailer_url'];
    var title = json['title'];
    var title_english = json['title_english'];
    var title_japanese = json['title_japanese'];
    var title_synonyms = (json['title_synonyms'] as List)?.map((e) => e as String)?.toList();
    var type = json['type'];
    var source = json['source'];
    var episodes = json['episodes'];
    var status = json['status'];
    var airing = json['airing'];
    var aired = Period.fromJson(json['aired']);
    var duration = json['duration'];
    var rating = json['rating'];
    var score = json['score'] is int ? json['score'].toDouble() : json['score'];
    var scored_by = json['scored_by'];
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
    var producers = <Producer>[];
    for(var producer in json['producers']){
      producers.add(Producer.fromJson(producer));
    }
    var licensors = <Producer>[];
    for(var licensor in json['licensors']){
      licensors.add(Producer.fromJson(licensor));
    }
    var studios = <Producer>[];
    for(var studio in json['producers']){
      studios.add(Producer.fromJson(studio));
    }
    var genres = <Genre>[];
    for(var genre in json['genres']){
      genres.add(Genre.fromJson(genre));
    }
    var opening_themes = (json['opening_themes'] as List)?.map((e) => e as String)?.toList();
    var ending_themes = (json['ending_themes'] as List)?.map((e) => e as String)?.toList();
    return Anime(
      mal_id,
      url,
      image_url,
      trailer_url,
      title,
      title_english,
      title_japanese,
      title_synonyms,
      type,
      source,
      episodes,
      status,
      airing,
      aired,
      duration,
      rating,
      score,
      scored_by,
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
      opening_themes,
      ending_themes
    );
  }

  int get mal_id => _mal_id;
  String get url => _url;
  String get image_url => _image_url;
  String get trailer_url => _trailer_url;
  String get title => _title;
  String get title_english => _title_english;
  String get title_japanese => _title_japanese;
  List<String> get title_synonyms => _title_synonyms;
  String get type => _type;
  String get source => _source;
  int get episodes => _episodes;
  String get status => _status;
  bool get airing => _airing;
  Period get aired => _aired;
  String get duration => _duration;
  String get rating => _rating;
  double get score => _score;
  int get scored_by => _scored_by;
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
  List<String> get opening_themes => _opening_themes;
  List<String> get ending_themes => _ending_themes;
}
