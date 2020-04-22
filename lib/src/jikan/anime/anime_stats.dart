import 'package:jikart/jikan_objects.dart';

class AnimeStats{
  int _watching;
  int _completed;
  int _on_hold;
  int _dropped;
  int _plan_to_watch;
  int _total;
  Map<String, Score> _scores;

  AnimeStats(
      this._watching,
      this._completed,
      this._on_hold,
      this._dropped,
      this._plan_to_watch,
      this._total,
      this._scores);

  factory AnimeStats.fromJson(Map<String, dynamic> json){
    var watching = json['watching'];
    var completed = json['completed'];
    var on_hold = json['on_hold'];
    var dropped = json['dropped'];
    var plan_to_watch = json['plan_to_watch'];
    var total = json['total'];
    var raw_scores = json['scores'] as Map;
    var scores = <String, Score>{};
    raw_scores.forEach((k, v) => scores.putIfAbsent(k, () => Score.fromJson(v)));
    return AnimeStats(watching, completed, on_hold, dropped, plan_to_watch, total, scores);
  }

  int get watching => _watching;
  int get completed => _completed;
  int get on_hold => _on_hold;
  int get dropped => _dropped;
  int get plan_to_watch => _plan_to_watch;
  int get total => _total;
  Map<String, Score> get scores => _scores;
}
