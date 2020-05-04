import 'package:jikart/jikan_objects.dart';

class AnimeStats{
  int _watching;
  int _completed;
  int _onHold;
  int _dropped;
  int _planToWatch;
  int _total;
  Map<String, Score> _scores;

  AnimeStats(
      this._watching,
      this._completed,
      this._onHold,
      this._dropped,
      this._planToWatch,
      this._total,
      this._scores);

  factory AnimeStats.fromJson(Map<String, dynamic> json){
    var watching = json['watching'];
    var completed = json['completed'];
    var onHold = json['on_hold'];
    var dropped = json['dropped'];
    var planToWatch = json['plan_to_watch'];
    var total = json['total'];
    var rawScores = json['scores'] as Map;
    var scores = <String, Score>{};
    rawScores.forEach((k, v) => scores.putIfAbsent(k, () => Score.fromJson(v)));
    return AnimeStats(watching, completed, onHold, dropped, planToWatch, total, scores);
  }

  int get watching => _watching;
  int get completed => _completed;
  int get onHold => _onHold;
  int get dropped => _dropped;
  int get planToWatch => _planToWatch;
  int get total => _total;
  Map<String, Score> get scores => _scores;
}
