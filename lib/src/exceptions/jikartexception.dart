class JikartException implements Exception{
  int _code;
  String _message;

  JikartException({int code, String message}){
    _code = code;
    _message = message;
  }

  @override
  String toString(){
    return('[Error code: ${_code}] ${_message}');
  }
}
