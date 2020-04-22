class Score{
  int _votes;
  double _percentage;

  Score(this._votes, this._percentage);

  factory Score.fromJson(Map<String, dynamic> json){
    var votes = json['votes'];
    var percentage = json['percentage'] is int ? json['percentage'].toDouble() : json['percentage'];
    return Score(votes, percentage);
  }

  int get votes => _votes;
  double get percentage => _percentage;
}
