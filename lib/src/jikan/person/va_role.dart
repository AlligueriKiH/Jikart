import 'package:jikart/jikan_objects.dart';

class VARole{
  String _role;
  PersonAnime _anime;
  PersonCharacter _character;

  VARole(
      this._role,
      this._anime,
      this._character);

  factory VARole.fromJson(Map<String, dynamic> json){
    var role = json['role'];
    var anime = PersonAnime.fromJson(json['anime']);
    var character = PersonCharacter.fromJson(json['character']);
    return VARole(role, anime, character);
  }

  String get role => _role;
  PersonAnime get anime => _anime;
  PersonCharacter get character => _character;
}
