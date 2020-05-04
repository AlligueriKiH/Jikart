import 'package:jikart/jikan_objects.dart';

class Manga{
  int _malId;
  String _url;
  String _title;
  String _titleEnglish;
  String _titleJapanese;
  List<String> _titleSynonyms;
  String _status;
  String _imageUrl;
  String _type;
  int _volumes;
  int _chapters;
  bool _publishing;
  Period _published;
  int _rank;
  double _score;
  int _scoredBy;
  int _popularity;
  int _members;
  int _favorites;
  String _synopsis;
  String _background;
  Map<String, List<Related>> _related;
  List<Genre> _genres;
  List<Author> _authors;
  List<Serialization> _serializations;

  Manga(
      this._malId,
      this._url,
      this._title,
      this._titleEnglish,
      this._titleJapanese,
      this._titleSynonyms,
      this._status,
      this._imageUrl,
      this._type,
      this._volumes,
      this._chapters,
      this._publishing,
      this._published,
      this._rank,
      this._score,
      this._scoredBy,
      this._popularity,
      this._members,
      this._favorites,
      this._synopsis,
      this._background,
      this._related,
      this._genres,
      this._authors,
      this._serializations);

  factory Manga.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var title = json['title'];
    var titleEnglish = json['title_english'];
    var titleJapanese = json['title_japanese'];
    var titleSynonyms = (json['title_synonyms'] as List)?.map((e) => e as String)?.toList();
    var status = json['status'];
    var imageUrl = json['image_url'];
    var type = json['type'];
    var volumes = json['volumes'];
    var chapters = json['chapters'];
    var publishing = json['publishing'];
    var published = Period.fromJson(json['published']);
    var rank = json['rank'];
    var score = json['score'] is int ? json['score'].toDouble() : json['score'];
    var scoredBy = json['scored_by'];
    var popularity = json['popularity'];
    var members = json['members'];
    var favorites = json['favorites'];
    var synopsis = json['synopsis'];
    var background = json['background'];
    var related = <String, List<Related>>{};
    json['related']?.forEach((k, v) {
      var temp = <Related>[];
      v?.forEach((anime) => temp.add(Related.fromJson(anime)));
      related.putIfAbsent(k, () => temp);
    });
    var genres = List.generate(json['genres'].length, (i) => Genre.fromJson(json['genres'][i]));
    var authors = List.generate(json['authors'].length, (i) => Author.fromJson(json['authors'][i]));
    var serializations = List.generate(json['serializations'].length, (i) => Serialization.fromJson(json['serializations'][i]));
    return Manga(
        malId,
        url,
        title,
        titleEnglish,
        titleJapanese,
        titleSynonyms,
        status,
        imageUrl,
        type,
        volumes,
        chapters,
        publishing,
        published,
        rank,
        score,
        scoredBy,
        popularity,
        members,
        favorites,
        synopsis,
        background,
        related,
        genres,
        authors,
        serializations);
  }

  int get malId => _malId;
  String get url => _url;
  String get title => _title;
  String get titleEnglish => _titleEnglish;
  String get titleJapanese => _titleJapanese;
  List<String> get titleSynonyms => _titleSynonyms;
  String get status => _status;
  String get imageUrl => _imageUrl;
  String get type => _type;
  int get volumes => _volumes;
  int get chapters => _chapters;
  bool get publishing => _publishing;
  Period get published => _published;
  int get rank => _rank;
  double get score => _score;
  int get scoredBy => _scoredBy;
  int get popularity => _popularity;
  int get members => _members;
  int get favorites => _favorites;
  String get synopsis => _synopsis;
  String get background => _background;
  Map<String, List<Related>> get related => _related;
  List<Genre> get genres => _genres;
  List<Author> get authors => _authors;
  List<Serialization> get serializations => _serializations;
}
