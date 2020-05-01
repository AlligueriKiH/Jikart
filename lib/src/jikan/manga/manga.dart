import 'package:jikart/jikan_objects.dart';

class Manga{
  int _mal_id;
  String _url;
  String _title;
  String _title_english;
  String _title_japanese;
  List<String> _title_synonyms;
  String _status;
  String _image_url;
  String _type;
  int _volumes;
  int _chapters;
  bool _publishing;
  Period _published;
  int _rank;
  double _score;
  int _scored_by;
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
      this._mal_id,
      this._url,
      this._title,
      this._title_english,
      this._title_japanese,
      this._title_synonyms,
      this._status,
      this._image_url,
      this._type,
      this._volumes,
      this._chapters,
      this._publishing,
      this._published,
      this._rank,
      this._score,
      this._scored_by,
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
    var mal_id = json['mal_id'];
    var url = json['url'];
    var title = json['title'];
    var title_english = json['title_english'];
    var title_japanese = json['title_japanese'];
    var title_synonyms = (json['title_synonyms'] as List)?.map((e) => e as String)?.toList();
    var status = json['status'];
    var image_url = json['image_url'];
    var type = json['type'];
    var volumes = json['volumes'];
    var chapters = json['chapters'];
    var publishing = json['publishing'];
    var published = Period.fromJson(json['published']);
    var rank = json['rank'];
    var score = json['score'] is int ? json['score'].toDouble() : json['score'];
    var scored_by = json['scored_by'];
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
    var genres = <Genre>[];
    for(var genre in json['genres']){
      genres.add(Genre.fromJson(genre));
    }
    var authors = <Author>[];
    for(var author in json['authors']){
      authors.add(Author.fromJson(author));
    }
    var serializations = <Serialization>[];
    for(var serialization in json['serializations']){
      serializations.add(Serialization.fromJson(serialization));
    }
    return Manga(
        mal_id,
        url,
        title,
        title_english,
        title_japanese,
        title_synonyms,
        status,
        image_url,
        type,
        volumes,
        chapters,
        publishing,
        published,
        rank,
        score,
        scored_by,
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

  int get mal_id => _mal_id;
  String get url => _url;
  String get title => _title;
  String get title_english => _title_english;
  String get title_japanese => _title_japanese;
  List<String> get title_synonyms => _title_synonyms;
  String get status => _status;
  String get image_url => _image_url;
  String get type => _type;
  int get volumes => _volumes;
  int get chapters => _chapters;
  bool get publishing => _publishing;
  Period get published => _published;
  int get rank => _rank;
  double get score => _score;
  int get scored_by => _scored_by;
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
