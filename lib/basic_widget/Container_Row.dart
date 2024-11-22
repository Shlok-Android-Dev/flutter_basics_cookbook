import 'package:flutter/material.dart';
import 'package:flutter_basics_widget/main.dart';

class ContainerRow extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int index;

  ContainerRow({required this.color, required this.icon, required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[600],
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
          tooltip: 'Go to Login Screen',
        ),
        appBar: AppBar(
          forceMaterialTransparency: false,
          title: const Text("Container Column..."),
          backgroundColor: color,
        ),
        body: SafeArea(
          child: Row(
            children: [
              const Text('Container 1'),
              Container(
                height: 150.0,
                width: 100.0,
                color: Colors.red,
                padding: EdgeInsets.all(20.0),
                child: const Image(
                  image: AssetImage('images/smile.png'),
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
            ],
          ),
        ),
      ),
    );
  }
}
