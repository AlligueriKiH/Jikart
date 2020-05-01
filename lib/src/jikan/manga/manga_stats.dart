import 'package:jikart/jikan_objects.dart';

class MangaStats{
  int _reading;
  int _completed;
  int _on_hold;
  int _dropped;
  int _plan_to_read;
  int _total;
  Map<String, Score> _scores;

  MangaStats(
      this._reading,
      this._completed,
      this._on_hold,
      this._dropped,
      this._plan_to_read,
      this._total,
      this._scores);

  factory MangaStats.fromJson(Map<String, dynamic> json){
    var reading = json['reading'];
    var completed = json['completed'];
    var on_hold = json['on_hold'];
    var dropped = json['dropped'];
    var plan_to_read = json['plan_to_read'];
    var total = json['total'];
    var raw_scores = json['scores'] as Map;
    var scores = <String, Score>{};
    raw_scores.forEach((k, v) => scores.putIfAbsent(k, () => Score.fromJson(v)));
    return MangaStats(reading, completed, on_hold, dropped, plan_to_read, total, scores);
  }

  int get watching => _reading;
  int get completed => _completed;
  int get on_hold => _on_hold;
  int get dropped => _dropped;
  int get plan_to_watch => _plan_to_read;
  int get total => _total;
  Map<String, Score> get scores => _scores;
}
