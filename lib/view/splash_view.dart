import 'package:flutter/material.dart';
import 'package:mvvm/view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  SplashServices services=SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    services.CheckAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
            "Splash\nScreen",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
      ),
    );
  }
}