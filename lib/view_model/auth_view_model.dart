import 'package:flutter/cupertino.dart';
import 'package:mvvm/repository/auth_repository.dart';
import 'package:mvvm/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';


class AuthViewModel with ChangeNotifier {
  final _myrepo =AuthRepository();

  bool _isLoading=false;

  bool get loading => _isLoading;

  setLoading(bool value){
    _isLoading=value;
    notifyListeners();
  }

  Future<void> loginApi(BuildContext context,dynamic data) async{
     setLoading(true);
     await _myrepo.loginApi(data).then((value) {
      setLoading(false);
      Utils.toastMessage("Login Succesfull");
     }).onError((error, stackTrace) {
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
     });
  }
}