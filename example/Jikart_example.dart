import 'package:jikart/jikart.dart';

void main() {
  var jikart = Jikart();
  jikart.anime.getAnime(1)
      .then((result) => print('${result['title']} - ${result['episodes']} episodes'));
}
