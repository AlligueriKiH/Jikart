class GenericException implements Exception{
  String _message;

  GenericException({String message}){
    _message = message;
  }

  @override
  String toString(){
    return(_message);
  }
}
