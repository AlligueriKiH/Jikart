class Picture{
  String _small;
  String _large;

  Picture(this._small, this._large);

  factory Picture.fromJson(Map<String, dynamic> json){
    var small = json['small'];
    var large = json['large'];
    return Picture(small, large);
  }

  String get small => _small;
  String get large => _large;
}
