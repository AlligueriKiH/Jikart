class Staff{
  int _mal_id;
  String _url;
  String _name;
  String _image_url;
  List<String> _positions;

  Staff(
      this._mal_id,
      this._url,
      this._name,
      this._image_url,
      this._positions);

  factory Staff.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var name = json['name'];
    var image_url = json['image_url'];
    var positions = (json['positions'] as List)?.map((e) => e as String)?.toList();
    return Staff(mal_id, url, name, image_url, positions);
  }

  int get mal_id => _mal_id;
  String get url => _url;
  String get name => _name;
  String get image_url => _image_url;
  List<String> get positions => _positions;
}
