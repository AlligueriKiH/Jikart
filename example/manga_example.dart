import 'package:jikart/jikart.dart';

void main() async{
  var jikart = Jikart();

  var manga_id = 88660; // https://myanimelist.net/manga/88660/

  var manga = await jikart.manga.getManga(manga_id);

  print('${manga.title} (${manga.type})');
  print('Status: ${manga.status} (${manga.published.string})');
  print('Score: ${manga.score}\n');

  print('Related:');
  manga.related?.forEach((type, manga){
    print('- ${type}:');
    manga?.forEach((result) => print(result.name));
  });
}
