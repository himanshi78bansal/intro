import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 23, 40),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 150,
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 1, 23, 40),
                  ),
                  title: Text(
                    "hbnsl78@gmail.com",
                    style: TextStyle(),
                  ),
                  trailing: Icon(
                    Icons.copy,
                    color: Color.fromARGB(255, 1, 23, 40),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Center(
                    child: Text(
                      "in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Color.fromARGB(255, 1, 23, 40),
                        
                      ),
                    ),
                  ),
                  title: Text(
                    "https://www.linkedin.com/in/himanshi-bansal-495196222",
                    style: TextStyle(),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      CopySelectionTextIntent;
                    },
                    child: Icon(
                      Icons.copy,
                      color: Color.fromARGB(255, 1, 23, 40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
