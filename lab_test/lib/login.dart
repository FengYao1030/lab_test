import 'package:flutter/material.dart';
import 'package:lab_tets/welcome.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController _usernameController = TextEditingController();
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
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 22,
            child: Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Stack(children: [
                Positioned(
                  top: 170,
                  left: 115,
                  child: Text('Welcome',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                Positioned(
                  top: 30,
                  left: 115,
                  child: Icon(
                    Icons.person,
                    size: 120,
                  ),
                )
              ]),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 370),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          fontFamily: 'TimesNewRoman',
                          fontSize: 20,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 460,
                left: 40,
                child: SizedBox(
                  width: 310,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontFamily: 'TimesNewRoman',
                        fontSize: 20,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => Welcome(
                                username: _usernameController.text,
                              )));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 196, 131, 208),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 60),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'TimesNewRoman',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Center(
                  child: Text('Don\' have an accout? Sign Up'),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(height: 30, width: 100, color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}
