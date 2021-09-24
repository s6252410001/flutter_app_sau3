import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'newaccout_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({ Key? key }) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF424552),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(
                height: 70.0,
              ),

              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 70.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0
                ),
                child: Row(
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 70.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                  right: 60.0
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.grey[350],
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                      fontFamily: 'Kanit',
                    ),
                    enabledBorder : UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00)
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00)
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 60.0,
                  right: 60.0
                ),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey[350],
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey[350],
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[350],
                      fontFamily: 'Kanit',
                    ),
                    enabledBorder : UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00)
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFE38D00)
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              Text(
                'Incorrect Password',
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),

              SizedBox(
                height: 40.0,
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 20.0,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 140.0 ,
                    55.0
                  ),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      60.0
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'First time here ?  ',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      color: Colors.white,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewAccoutUI(),
                        ),
                      );
                    },

                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[100],
                      ), 
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}