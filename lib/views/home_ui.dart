import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_sau3/views/login_ui.dart';
import 'package:flutter_app_sau3/views/newaccout_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({ Key? key }) : super(key: key);

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

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              SizedBox(
                height: 80.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.appStore,
                      size: 70.0,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 120.0,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  right: 200.0,
                ),
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2 //ระยะช่องไฟตัวอักษร
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  right: 200.0,
                ),
                child: Text(
                  'your',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2 //ระยะช่องไฟตัวอักษร
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  right: 105.0,
                ),
                child: Text(
                  'adventure',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2 //ระยะช่องไฟตัวอักษร
                  ),
                ),
              ),

              SizedBox(
                height: 120.0,
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
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 140.0 ,
                    55.0
                  ),
                  primary: Colors.yellow[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      60.0
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You Don\'t have accout?  ',
                    style: TextStyle(
                      fontFamily: 'Kanit',
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
                      'Sign up here.',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.bold
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