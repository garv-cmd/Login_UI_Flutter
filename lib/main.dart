import 'package:flutter/material.dart';
import 'signIn.dart';

void main() => runApp(MyApp());
const kprimaryColor = Colors.lightBlueAccent;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kprimaryColor,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: welcomeScreen(),
    );
  }
}

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/flower.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Photography Lessons\n',
                        style: Theme.of(context).textTheme.display1,
                      ),
                      TextSpan(
                        text: 'Master The Art Of Photography',
                        style: Theme.of(context).textTheme.headline,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return signIn();
                        }),
                      );
                    },
                    child: Container(
                      height: 60,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: kprimaryColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'START LEARNING',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
