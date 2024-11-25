import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/main.dart';

class Profile_MiCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int index;

  Profile_MiCard(
      {required this.color, required this.icon, required this.index});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange[900],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridScreen()),
            );
          },
          child: const Icon(
            Icons.contacts_rounded,
            color: Colors.orange,
          ),
          tooltip: 'Go to Login Screen',
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
              width: 155.0,
            ),
            const CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage('images/shlokimg.jpg'),
              backgroundColor: Colors.white,
            ),
            const Text(
              'Shlok Aggrawal',
              style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: 10.0,
            ),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSans3'),
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Card(
              color: Colors.white,
              /*decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),*/
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone_rounded,
                  color: color,
                  size: 25.0,
                ),
                title: Text(
                  '+91 8081094578',
                  style: TextStyle(
                    color: color,
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSans3',
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail_rounded,
                  color: color,
                  size: 25.0,
                ),
                title: Text(
                  'Shlok@dreamcast.co',
                  style: TextStyle(
                    color: color,
                    fontSize: 18.0,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSans3',
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
