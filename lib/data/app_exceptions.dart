// ignore_for_file: prefer_typing_uninitialized_variables

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message,this._prefix]);

  @override
  String toString(){
    return "$_prefix  $_message";
  }


}

class FetchDataExcception extends AppException {
  FetchDataExcception([String? message]):super(message,"Error During Communication");
}

class BadRequestExcception extends AppException {
  BadRequestExcception([String? message]):super(message,"Invalid/Bad request");
}

class UnauthorisedExcception extends AppException {
  UnauthorisedExcception([String? message]):super(message,"Unauthorised request");
}

class InvalidInputExcception extends AppException {
  InvalidInputExcception([String? message]):super(message,"Invalid Input");
}