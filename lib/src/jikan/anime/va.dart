class VA{
  int _malId;
  String _name;
  String _url;
  String _imageUrl;
  String _language;

  VA(this._malId, this._name, this._url, this._imageUrl, this._language);

  factory VA.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var name = json['name'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var language = json['language'];
    return VA(malId, name, url, imageUrl, language);
  }

  int get malId => _malId;
  String get name => _name;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get language => _language;
}
