class Video{
  String _title;
  String _imageUrl;
  String _videoUrl;

  Video(this._title, this._imageUrl, this._videoUrl);

  factory Video.fromJson(Map<String, dynamic> json){
    var title = json['title'];
    var imageUrl = json['image_url'];
    var videoUrl = json['video_url'];
    return Video(title, imageUrl, videoUrl);
  }

  String get title => _title;
  String get imageUrl => _imageUrl;
  String get videoUrl => _videoUrl;
}
