class Recommendation{
  int _mal_id;
  String _url;
  String _image_url;
  String _recommendation_url;
  String _title;
  int _recommendation_count;

  Recommendation(
      this._mal_id,
      this._url,
      this._image_url,
      this._recommendation_url,
      this._title,
      this._recommendation_count);

  factory Recommendation.fromJson(Map<String, dynamic> json){
    var mal_id = json['mal_id'];
    var url = json['url'];
    var image_url = json['image_url'];
    var recommendation_url = json['recommendation_url'];
    var title = json['title'];
    var recommendation_count = json['recommendation_count'];
    return Recommendation(mal_id, url, image_url, recommendation_url, title, recommendation_count);
  }

  int get mal_id => _mal_id;
  String get url => _url;
  String get image_url => _image_url;
  String get recommendation_url => _recommendation_url;
  String get title => _title;
  int get recommendation_count => _recommendation_count;
}
