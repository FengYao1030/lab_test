import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.login)
                ],
              ),
            ),
            backgroundColor: Colors.blue[300]),
        body: Center(
          child: Text(
            "Welcome, $username",
            style: const TextStyle(
                fontFamily: "TimesNewRomna",
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
