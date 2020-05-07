class Entry{
  int _malId;
  String _name;
  String _url;
  String _imageUrl;
  String _role;

  Entry(
      this._malId,
      this._name,
      this._url,
      this._imageUrl,
      this._role);

  factory Entry.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var name = json['name'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var role = json['role'];
    return Entry(malId, name, url, imageUrl, role);
  }

  int get malId => _malId;
  String get name => _name;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get role => _role;
}
