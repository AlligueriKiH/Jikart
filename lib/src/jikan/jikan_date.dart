class JikanDate{
  int _day;
  int _month;
  int _year;

  JikanDate(
      this._day,
      this._month,
      this._year);

  factory JikanDate.fromJson(Map<String, dynamic> json){
    var day = json['day'];
    var month = json['month'];
    var year = json['year'];
    return JikanDate(day, month, year);
  }

  int get day => _day;
  int get month => _month;
  int get year => _year;
}
