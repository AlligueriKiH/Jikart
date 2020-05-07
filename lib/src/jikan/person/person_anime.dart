class PersonAnime{
  int _malId;
  String _url;
  String _imageUrl;
  String _name;

  PersonAnime(
      this._malId,
      this._url,
      this._imageUrl,
      this._name);

  factory PersonAnime.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var name = json['name'];
    return(PersonAnime(malId, url, imageUrl, name));
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get name => _name;
}
