import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/main.dart';

class Container_Column extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int index;

  Container_Column(
      {required this.color, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.tealAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridScreen()),
            );
          },
          child: Icon(
            icon,
            color: color,
          ),
          tooltip: 'Go to Grid Screen',
        ),
        appBar: AppBar(
          forceMaterialTransparency: false,
          title: const Text("Container Column..."),
          backgroundColor: color,
        ),
        body: SafeArea(
          /*color: Colors.blueGrey,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),*/
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Padding(padding: EdgeInsets.all(20.0)),
              const Text('Container 1'),
              Container(
                height: 150.0,
                width: 100.0,
                color: Colors.red,
                padding: EdgeInsets.all(20.0),
                child: const Image(
                  image: AssetImage('images/bg_badge_bottom.png'),
                ),
              ),

              const Text('Container 2'),
              Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(20.0),
                child: const Image(
                  image: NetworkImage(
                      'https://cdn.prod.website-files.com/5f841209f4e71b2d70034471/60bb4a2e143f632da3e56aea_Flutter%20app%20development%20(2).png'),
                ),
              ),

              const Text('Container 3'),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(20.0),
                child: const Image(
                  image: NetworkImage(
                      'https://docs.flutter.dev/assets/images/docs/ui/layout/article-hero-image.png'),
                ),
              ),
              const Text('This is Screen of Container manager class'),
            ],
          ),
        ),
      ),
    );
  }
}
