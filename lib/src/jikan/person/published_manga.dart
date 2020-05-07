import 'package:jikart/jikan_objects.dart';

class PublishedManga{
  String _position;
  PersonManga _manga;

  PublishedManga(
      this._position,
      this._manga);

  factory PublishedManga.fromJson(Map<String, dynamic> json){
    var position = json['position'];
    var manga = PersonManga.fromJson(json['manga']);
    return PublishedManga(position, manga);
  }

  String get position => _position;
  PersonManga get manga => _manga;
}
