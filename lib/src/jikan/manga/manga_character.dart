class MangaCharacter{
  int _mal_id;
  String _url;
  String _image_url;
  String _name;
  String _role;

  MangaCharacter(
      this._mal_id,
      this._url,
      this._image_url,
      this._name,
      this._role);

  factory MangaCharacter.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var image_url = json['image_url'];
    var name = json['name'];
    var role = json['role'];
    return MangaCharacter(mal_id, url, image_url, name, role);
  }

  int get mal_id => _mal_id;
  String get url => _url;
  String get image_url => _image_url;
  String get name => _name;
  String get role => _role;
}