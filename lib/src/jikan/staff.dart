class Staff{
  int _malId;
  String _url;
  String _name;
  String _imageUrl;
  List<String> _positions;

  Staff(
      this._malId,
      this._url,
      this._name,
      this._imageUrl,
      this._positions);

  factory Staff.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var name = json['name'];
    var imageUrl = json['image_url'];
    var positions = (json['positions'] as List)?.map((e) => e as String)?.toList();
    return Staff(malId, url, name, imageUrl, positions);
  }

  int get malId => _malId;
  String get url => _url;
  String get name => _name;
  String get imageUrl => _imageUrl;
  List<String> get positions => _positions;
}
