class VA{
  int _mal_id;
  String _name;
  String _url;
  String _image_url;
  String _language;

  VA(this._mal_id, this._name, this._url, this._image_url, this._language);

  factory VA.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var name = json['name'];
    var url = json['url'];
    var image_url = json['image_url'];
    var language = json['language'];
    return VA(mal_id, name, url, image_url, language);
  }

  int get mal_id => _mal_id;
  String get name => _name;
  String get url => _url;
  String get image_url => _image_url;
  String get language => _language;
}
