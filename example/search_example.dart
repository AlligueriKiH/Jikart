import 'package:jikart/jikart.dart';

void main() async{
  var jikart = Jikart();

  var searchResult = await jikart.search.anime('Bloom');
  var anime = jikart.anime;

  searchResult?.forEach((result) => print('${result.title} (ID: ${result.malId})'));

  print('\n');

  var fullresult = await anime.getAnime(searchResult[0].malId);
  print('${fullresult.title} (${fullresult.titleJapanese})');
}
