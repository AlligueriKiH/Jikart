import 'package:jikart/jikan_objects.dart';

class AnimeStaffPosition{
  String _position;
  PersonAnime _anime;

  AnimeStaffPosition(
      this._position,
      this._anime);

  factory AnimeStaffPosition.fromJson(Map<String, dynamic> json){
    var position = json['position'];
    var anime = PersonAnime.fromJson(json['anime']);
    return AnimeStaffPosition(position, anime);
  }

  String get position => _position;
  PersonAnime get anime => _anime;
}
