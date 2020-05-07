import 'package:jikart/jikart.dart';

void main() async{
  var jikart = Jikart();

  var character_id = 137994; // https://myanimelist.net/character/137994/

  var character = await jikart.character.getCharacter(character_id);

  print('${character.name} (${character.nameKanji})');
  print('\nAbout:\n${character.about.replaceAll('\\n', '')}');
  print('\nAnimeography:');
  character.animeography?.forEach((anime) => print('${anime.name} (${anime.role})'));
  print('\nMangaography:');
  character.mangaography?.forEach((manga) => print('${manga.name} (${manga.role})'));
}
