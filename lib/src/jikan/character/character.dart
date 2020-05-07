import 'package:jikart/jikan_objects.dart';

class Character{
  int _malId;
  String _url;
  String _name;
  String _nameKanji;
  List<dynamic> _nicknames;
  String _about;
  int _memberFavorites;
  String _imageUrl;
  List<Entry> _animeography;
  List<Entry> _mangaography;
  List<VA> _voiceActors;

  Character(
      this._malId,
      this._url,
      this._name,
      this._nameKanji,
      this._nicknames,
      this._about,
      this._memberFavorites,
      this._imageUrl,
      this._animeography,
      this._mangaography,
      this._voiceActors);

  factory Character.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var name = json['name'];
    var nameKanji = json['name_kanji'];
    var nicknames = json['nicknames'];
    var about = json['about'];
    var memberFavorites = json['member_favorites'];
    var imageUrl = json['image_url'];
    var animeEntry = json['animeography'] as List;
    var animeography = List.generate(animeEntry.length, (i) => Entry.fromJson(animeEntry[i]));
    var mangaEntry = json['mangaography'] as List;
    var mangaography = List.generate(mangaEntry.length, (i) => Entry.fromJson(mangaEntry[i]));
    var VActors = json['voice_actors'] as List;
    var voiceActors = List.generate(VActors.length, (i) => VA.fromJson(VActors[i]));
    return Character(malId, url, name, nameKanji, nicknames, about, memberFavorites, imageUrl, animeography, mangaography, voiceActors);
  }

  int get malId => _malId;
  String get url => _url;
  String get name => _name;
  String get nameKanji => _nameKanji;
  List<dynamic> get nicknames => _nicknames;
  String get about => _about;
  int get memberFavorites => _memberFavorites;
  String get imageUrl => _imageUrl;
  List<Entry> get animeography => _animeography;
  List<Entry> get mangaography => _mangaography;
  List<VA> get voiceActors => _voiceActors;
}
