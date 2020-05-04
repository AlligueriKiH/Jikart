import 'package:jikart/jikan_objects.dart';

class MangaStats{
  int _reading;
  int _completed;
  int _onHold;
  int _dropped;
  int _planToRead;
  int _total;
  Map<String, Score> _scores;

  MangaStats(
      this._reading,
      this._completed,
      this._onHold,
      this._dropped,
      this._planToRead,
      this._total,
      this._scores);

  factory MangaStats.fromJson(Map<String, dynamic> json){
    var reading = json['reading'];
    var completed = json['completed'];
    var onHold = json['on_hold'];
    var dropped = json['dropped'];
    var planToRead = json['plan_to_read'];
    var total = json['total'];
    var raw_scores = json['scores'] as Map;
    var scores = <String, Score>{};
    raw_scores.forEach((k, v) => scores.putIfAbsent(k, () => Score.fromJson(v)));
    return MangaStats(reading, completed, onHold, dropped, planToRead, total, scores);
  }

  int get watching => _reading;
  int get completed => _completed;
  int get onHold => _onHold;
  int get dropped => _dropped;
  int get planToRead => _planToRead;
  int get total => _total;
  Map<String, Score> get scores => _scores;
}
