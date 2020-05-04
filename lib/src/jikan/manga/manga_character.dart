class MangaCharacter{
  int _malId;
  String _url;
  String _imageUrl;
  String _name;
  String _role;

  MangaCharacter(
      this._malId,
      this._url,
      this._imageUrl,
      this._name,
      this._role);

  factory MangaCharacter.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var name = json['name'];
    var role = json['role'];
    return MangaCharacter(malId, url, imageUrl, name, role);
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get name => _name;
  String get role => _role;
}