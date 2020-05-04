class Related{
  int _malId;
  String _type;
  String _name;
  String _url;

  Related(this._malId,
      this._type,
      this._name,
      this._url);

  factory Related.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var type = json['type'];
    var name = json['name'];
    var url = json['url'];
    return Related(malId, type, name, url);
  }

  int get malId => _malId;
  String get type => _type;
  String get name => _name;
  String get url => _url;
}
