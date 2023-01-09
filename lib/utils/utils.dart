import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {

  static fieldFocusChange(
    BuildContext context,
    FocusNode current,
    FocusNode next
  )
  {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }


  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static flushBarErrorMessage(String msg, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: msg,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        duration: const Duration(seconds: 3),
        positionOffset: 20,
        icon: const Icon(
          Icons.error,
          size: 28,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(5),
        forwardAnimationCurve: Curves.bounceIn,
        reverseAnimationCurve: Curves.bounceOut,
      )..show(context),
    );
  }

  static snackBarMessage(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
