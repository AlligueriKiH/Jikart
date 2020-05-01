import 'package:jikart/src/jikan/anime/va.dart';

class AnimeCharacter{
  int _mal_id;
  String _url;
  String _image_url;
  String _name;
  String _role;
  List<VA> _voice_actors;

  AnimeCharacter(
      this._mal_id,
      this._url,
      this._image_url,
      this._name,
      this._role,
      this._voice_actors);

  factory AnimeCharacter.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var image_url = json['image_url'];
    var name = json['name'];
    var role = json['role'];
    var VA_list = json['voice_actors'] as List;
    var voice_actors = List.generate(VA_list.length, (i) => VA.fromJson(VA_list[i]));
    return AnimeCharacter(mal_id, url, image_url, name, role, voice_actors);
  }

  int get mal_id => _mal_id;
  String get url => _url;
  String get image_url => _image_url;
  String get name => _name;
  String get role => _role;
  List<VA> get voice_actors => _voice_actors;
}
