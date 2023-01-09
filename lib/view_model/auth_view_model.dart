import 'package:flutter/cupertino.dart';
import 'package:mvvm/repository/auth_repository.dart';
import 'package:mvvm/utils/Routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class AuthViewModel with ChangeNotifier {
  final _myrepo = AuthRepository();

  bool _isLoading = false;

  bool get loading => _isLoading;

  setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool _signUpLoading = false;

  bool get signUpLoading => _signUpLoading;

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(BuildContext context, dynamic data) async {
    setLoading(true);
    
    await _myrepo.loginApi(data).then((value) {
      
      setLoading(false);
      
      Utils.toastMessage("Login Succesfull");
      
      Navigator.pushNamed(context, RoutesName.home);
    
    }).onError((error, stackTrace) {
      
      setLoading(false);
      
      Utils.flushBarErrorMessage(error.toString(), context);
    
    });
  }

  Future<void> signUpApi(BuildContext context, dynamic data) async {
    setSignUpLoading(true);

    await _myrepo.registerApi(data).then((value) {
      
      setSignUpLoading(false);
      
      Utils.toastMessage("SignUp Succesfull");
      
      Navigator.pushNamed(context, RoutesName.login);
    
    }).onError((error, stackTrace) {
      
      setSignUpLoading(false);
      
      Utils.flushBarErrorMessage(error.toString(), context);
    
    });
  }
}
