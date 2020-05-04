class Recommendation{
  int _malId;
  String _url;
  String _imageUrl;
  String _recommendationUrl;
  String _title;
  int _recommendationCount;

  Recommendation(
      this._malId,
      this._url,
      this._imageUrl,
      this._recommendationUrl,
      this._title,
      this._recommendationCount);

  factory Recommendation.fromJson(Map<String, dynamic> json){
    var malId = json['mal_id'];
    var url = json['url'];
    var imageUrl = json['image_url'];
    var recommendationUrl = json['recommendation_url'];
    var title = json['title'];
    var recommendationCount = json['recommendation_count'];
    return Recommendation(malId, url, imageUrl, recommendationUrl, title, recommendationCount);
  }

  int get malId => _malId;
  String get url => _url;
  String get imageUrl => _imageUrl;
  String get recommendationUrl => _recommendationUrl;
  String get title => _title;
  int get recommendationCount => _recommendationCount;
}
