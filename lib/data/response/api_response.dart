import 'package:mvvm/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  String? message;
  T? data;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.completed() : status = Status.COMPLETED;

  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString(){
    return "Status: $status \n Message: $message \n Data: $data";
  }

}
