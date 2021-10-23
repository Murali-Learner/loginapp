import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 218, 0, 1),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: _height * 1,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 6),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 260),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: _height * 0.2),
              child: Container(
                height: _height,
                width: _width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                  color: Colors.white,
                ),
                //
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Positioned(
                        bottom: 900,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            maxRadius: 40,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/sunny.jpeg"),
                              radius: 35,
                              backgroundColor: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.06,
                      ),
                      Align(
                        heightFactor: _height * 0.00003,
                        widthFactor: double.infinity,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Username",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelStyle:
                              new TextStyle(color: const Color(0xFF424242)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                        ),
                        // keyboardType:KeyboardKe
                        controller: _usernameController,
                      ),
                      SizedBox(
                        height: _height * 0.02,
                      ),
                      Align(
                        heightFactor: _height * 0.00003,
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelStyle:
                              new TextStyle(color: const Color(0xFF424242)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                        ),
                        // keyboardType:KeyboardKe
                        controller: _passwordController,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
