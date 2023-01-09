import 'package:flutter/material.dart';
import 'package:mvvm/utils/Routes/routes_name.dart';
import 'package:mvvm/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomeScreen",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Consumer<UserViewModel>(
        builder: (context, value, child) {
          return Center(
            child: GestureDetector(
              onTap: () {
                value.removeUser().then((value) {
                  Navigator.pushNamed(context, RoutesName.login);
                });
              },
              child: const Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
