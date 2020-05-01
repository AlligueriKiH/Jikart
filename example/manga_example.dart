import 'package:jikart/jikart.dart';

void main() async{
  var jikart = Jikart();

  var manga_id = 88660; // https://myanimelist.net/manga/88660/

  var manga = await jikart.manga.getManga(manga_id);
  var characters = await jikart.manga.getCharacters(manga_id);

  print('${manga.title} (${manga.type})');
  print('Status: ${manga.status} (${manga.published.string})');
  print('Score: ${manga.score}');

  print('\nCharacters:');
  characters?.forEach((character) => print('${character.name} (${character.role})'));

  print('\nRelated:');
  manga.related?.forEach((type, manga){
    print('- ${type}:');
    manga?.forEach((result) => print(result.name));
  });
}
