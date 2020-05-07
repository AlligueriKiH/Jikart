import 'package:jikart/jikan_objects.dart';

class Person{
  int _malId;
  String _url;
  String _imageUrl;
  String _websiteUrl;
  String _name;
  String _givenName;
  String _familyName;
  List<dynamic> _alternateNames;
  String _birthday;
  int _memberFavorites;
  String _about;
  List<VARole> _voiceActingRoles;
  List<AnimeStaffPosition> _animeStaffPositions;
  List<PublishedManga> _publishedManga;

  Person(
      this._malId,
      this._url,
      this._imageUrl,
      this._websiteUrl,
      this._name,
      this._givenName,
      this._familyName,
      this._alternateNames,
      this._birthday,
      this._memberFavorites,
      this._about,
      this._voiceActingRoles,
      this._animeStaffPositions,
      this._publishedManga);

  factory Person.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var websiteUrl = json['website_url'];
    var name = json['name'];
    var givenName = json['given_name'];
    var familyName = json['family_name'];
    var alternateNames = json['alternateNames'];
    var birthday = json['birthday'];
    var memberFavorites = json['member_favorites'];
    var about = json['about'];
    var VARoles = json['voice_acting_roles'] as List;
    var voiceActingRoles = List.generate(VARoles.length, (i) => VARole.fromJson(VARoles[i]));
    var positions = json['anime_staff_positions'] as List;
    var animeStaffPositions = List.generate(positions.length, (i) => AnimeStaffPosition.fromJson(positions[i]));
    var manga = json['published_manga'] as List;
    var publishedManga = List.generate(manga.length, (i) => PublishedManga.fromJson(manga[i]));
    return Person(malId, url, imageUrl, websiteUrl, name, givenName, familyName, alternateNames, birthday, memberFavorites, about, voiceActingRoles, animeStaffPositions, publishedManga);
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get websiteUrl => _websiteUrl;
  String get name => _name;
  String get givenName => _givenName;
  String get familyName => _familyName;
  List<dynamic> get alternateNames => _alternateNames;
  String get birthday => _birthday;
  int get memberFavorites => _memberFavorites;
  String get about => _about;
  List<VARole> get voiceActingRoles => _voiceActingRoles;
  List<AnimeStaffPosition> get animeStaffPositions => _animeStaffPositions;
  List<PublishedManga> get publishedManga => _publishedManga;
}
