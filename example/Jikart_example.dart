import 'package:jikart/jikart.dart';

void main() async{
  var jikart = Jikart();

  var anime_id = 37786; // https://myanimelist.net/anime/37786/

  var anime = await jikart.anime.getAnime(anime_id);
  var episodes = await jikart.anime.getEpisodes(anime_id);
  var stats = await jikart.anime.getStats(anime_id);

  print('${anime.title}');
  print('Score: ${anime.score}\n');

  print('Episodes:');
  episodes?.forEach((f) => print('${f.episode_id} ${f.title}'));

  print('\nScores:');
  stats.scores?.forEach((k, v) => print('${k}: ${v.votes} (${v.percentage}%)'));

}
