class Video{
  String _title;
  String _image_url;
  String _video_url;

  Video(this._title, this._image_url, this._video_url);

  factory Video.fromJson(Map<String, dynamic> json){
    var title = json['title'];
    var image_url = json['image_url'];
    var video_url = json['video_url'];
    return Video(title, image_url, video_url);
  }

  String get title => _title;
  String get image_url => _image_url;
  String get video_url => _video_url;
}
