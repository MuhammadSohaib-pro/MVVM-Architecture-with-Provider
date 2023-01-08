import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {required this.title, required this.callBack, super.key, this.isLoading=false});
  final String title;
  final Function callBack;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBack();
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: AppColors.pinkAccentColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: isLoading? const CircularProgressIndicator():Text(title,style: const TextStyle(fontSize: 25,color: AppColors.whiteColor),),
        ),
      ),
    );
  }
}
