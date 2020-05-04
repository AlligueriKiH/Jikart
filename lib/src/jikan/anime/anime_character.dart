import 'package:jikart/src/jikan/anime/va.dart';

class AnimeCharacter{
  int _malId;
  String _url;
  String _imageUrl;
  String _name;
  String _role;
  List<VA> _voiceActors;

  AnimeCharacter(
      this._malId,
      this._url,
      this._imageUrl,
      this._name,
      this._role,
      this._voiceActors);

  factory AnimeCharacter.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var name = json['name'];
    var role = json['role'];
    var VaList = json['voice_actors'] as List;
    var voiceActors = List.generate(VaList.length, (i) => VA.fromJson(VaList[i]));
    return AnimeCharacter(malId, url, imageUrl, name, role, voiceActors);
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get name => _name;
  String get role => _role;
  List<VA> get voiceActors => _voiceActors;
}
