// import 'dart:convert';
// SearchPeople searchPeopleFromJson(String str) => SearchPeople.fromJson(json.decode(str));
// String searchPeopleToJson(SearchPeople data) => json.encode(data.toJson());
class SearchPeople {
    int _malId;
    String _url;
    String _imageUrl;
    String _name;
    List<String> _alternativeNames;

    SearchPeople(
        this._malId,
        this._url,
        this._imageUrl,
        this._name,
        this._alternativeNames,
    );

    factory SearchPeople.fromJson(Map<String, dynamic> json) {
        var malId = json['mal_id'];
        var url = json['url'];
        var imageUrl = json['image_url'];
        var name = json['name'];
        var alternativeNames = List<String>.from(json['alternative_names'].map((x) => x));
        return SearchPeople(malId, url, imageUrl, name, alternativeNames);
    }

    // Map<String, dynamic> toJson() => {
    //     'mal_id': _malId,
    //     'url': _url,
    //     'image_url': _imageUrl,
    //     'name': _name,
    //     'alternative_names': List<dynamic>.from(_alternativeNames.map((x) => x)),
    // };
    int get malId => _malId;
    String get url => _url;
    String get imageUrl => _imageUrl;
    String get name => _name;
    List<String> get alternativeNames => _alternativeNames;

}
