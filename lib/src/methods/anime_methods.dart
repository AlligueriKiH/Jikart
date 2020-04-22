import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class AnimeMethods{
  final JikartClient _client;

  AnimeMethods(this._client);

  Future<Anime> getAnime(int id) async{
    var response = await _client.get('anime/${id}');
    return(Anime.fromJson(response));
  }

  Future<List<Staff>> getStaff(int id) async{
    var response = await _client.get('anime/${id}/characters_staff');
    var staff_list = <Staff>[];
    for(var staff in response['staff']){
      staff_list.add(Staff.fromJson(staff));
    }
    return staff_list;
  }

  Future<List<AnimeCharacter>> getCharacters(int id) async{
    var response = await _client.get('anime/${id}/characters_staff');
    var characters = <AnimeCharacter>[];
    for(var character in response['characters']){
      characters.add(AnimeCharacter.fromJson(character));
    }
    return characters;
  }

  Future<List<Episode>> getEpisodes(int id, {int page = 1}) async{
    var response = await _client.get('anime/${id}/episodes/${page}');
    var episodes = <Episode>[];
    for(var episode in response['episodes']){
      episodes.add(Episode.fromJson(episode));
    }
    return episodes;
  }

  Future<List<News>> getNews(int id) async{
    var response = await _client.get('anime/${id}/news');
    var news_list = <News>[];
    for(var news in response['articles']){
      news_list.add(News.fromJson(news));
    }
    return news_list;
  }

  Future<List<Picture>> getPictures(int id) async{
    var response = await _client.get('anime/${id}/pictures');
    var pictures = <Picture>[];
    for(var picture in response['pictures']){
      pictures.add(Picture.fromJson(picture));
    }
    return pictures;
  }

  Future<List<Video>> getPromos(int id) async{
    var response = await _client.get('anime/${id}/videos');
    var videos = <Video>[];
    for(var video in response['promo']){
      videos.add(Video.fromJson(video));
    }
    return videos;
  }

  Future<List<Video>> getEpisodesVideos(int id) async{
    var response = await _client.get('anime/${id}/videos');
    var videos = <Video>[];
    for(var video in response['episodes']){
      videos.add(Video.fromJson(video));
    }
    return videos;
  }

  Future<AnimeStats> getStats(int id) async{
    var response = await _client.get('anime/${id}/stats');
    return(AnimeStats.fromJson(response));
  }

  Future<List<Topic>> getForumTopics(int id) async{
    var response = await _client.get('anime/${id}/forum');
    var topics = <Topic>[];
    for(var topic in response['topics']){
      topics.add(Topic.fromJson(topic));
    }
    return topics;
  }

  Future<String> getMoreInfo(int id) async{
    var response = await _client.get('anime/${id}/moreinfo');
    return response['moreinfo'];
  }

  Future<List<AnimeReview>> getReviews(int id, {int page = 1}) async{
    var response = await _client.get('anime/${id}/reviews/${page}');
    var reviews = <AnimeReview>[];
    for(var review in response['reviews']){
      reviews.add(AnimeReview.fromJson(review));
    }
    return reviews;
  }

  Future<List<Recommendation>> getRecommendations(int id) async{
    var response = await _client.get('anime/${id}/recommendations');
    var recommendations = <Recommendation>[];
    for(var recommendation in response['recommendations']){
      recommendations.add(Recommendation.fromJson(recommendation));
    }
    return recommendations;
  }

  Future<List<AnimeUserUpdate>> getUserUpdates(int id, {int page = 1}) async{
    var response = await _client.get('anime/${id}/userupdates/${page}');
    var userupdates = <AnimeUserUpdate>[];
    for(var userupdate in response['users']){
      userupdates.add(AnimeUserUpdate.fromJson(userupdate));
    }
    return userupdates;
  }
}
