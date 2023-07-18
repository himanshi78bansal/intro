// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 23, 40),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage('images/himanshi.jpg'),
                ),
                Text(
                  "Himanshi Bansal",
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      wordSpacing: 4.0),
                ),
                Text(
                  "Learner",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    title: Text(
                      "+91 7497035925",
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    onTap: () async {
                      await Clipboard.setData(
                          ClipboardData(text: "7497035925"));
                      // copied successfully
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    title: new InkWell(
                        child: new Text('hbnsl78@gmail.com'),
                        onTap: () => launch(
                            'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox')),
                    trailing: Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    onTap: () async {
                      await Clipboard.setData(
                          ClipboardData(text: "hbnsl78@gmail.com"));
                      // copied successfully
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Text(
                      "in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 1, 23, 40)),
                    ),
                    title: new InkWell(
                        child: new Text(
                            'https://www.linkedin.com/in/himanshi-bansal-495196222'),
                        onTap: () => launch(
                            'https://www.linkedin.com/in/himanshi-bansal-495196222')),
                    trailing: Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(
                          text:
                              "https://www.linkedin.com/in/himanshi-bansal-495196222"));
                      // copied successfully
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Image.asset('images/GitHub.png',
                        width: 20, height: 20, fit: BoxFit.fill),
                    title: new InkWell(
                        child: new Text('https://github.com/Himanshi7Bansal'),
                        onTap: () =>
                            launch('https://github.com/Himanshi7Bansal')),
                    trailing: Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(
                          text: "https://github.com/Himanshi7Bansal"));
                      // copied successfully
                    },
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Image.asset('images/hackerrank.png',
                        width: 30, height: 30, fit: BoxFit.fill),
                    title: new InkWell(
                        child: new Text(
                            'https://www.hackerrank.com/hbnsl78?hr_r=1'),
                        onTap: () => launch(
                            'https://www.hackerrank.com/hbnsl78?hr_r=1')),
                    trailing: Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(
                          text: "https://www.hackerrank.com/hbnsl78?hr_r=1"));
                      // copied successfully
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
