class Genre{
  int _mal_id;
  String _type;
  String _name;
  String _url;

  Genre(this._mal_id,
      this._type,
      this._name,
      this._url);

  factory Genre.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var type = json['type'];
    var name = json['name'];
    var url = json['url'];
    return Genre(mal_id, type, name, url);
  }

  int get mal_id => _mal_id;
  String get type => _type;
  String get name => _name;
  String get url => _url;
}
