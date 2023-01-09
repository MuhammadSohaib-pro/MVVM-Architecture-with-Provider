import 'package:flutter/cupertino.dart';
import 'package:mvvm/model/user_model.dart';
import 'package:mvvm/utils/Routes/routes_name.dart';
import 'package:mvvm/view_model/user_view_model.dart';

class SplashServices {
  Future<UserModel> getUserData() {
    return UserViewModel().getUser();
  }

  void CheckAuthentication(BuildContext context) async {
    getUserData()
        .then(
          (value) async {
            if (value.token=='null' || value.token=='') {
              await Future.delayed(const Duration(seconds: 3));
              // ignore: use_build_context_synchronously
              Navigator.pushNamed(context, RoutesName.login);
            }else{
              await Future.delayed(const Duration(seconds: 3));
              // ignore: use_build_context_synchronously
              Navigator.pushNamed(context, RoutesName.home);
            }
          },
        )
        .onError(
          (error, stackTrace) {},
        );
  }
}
