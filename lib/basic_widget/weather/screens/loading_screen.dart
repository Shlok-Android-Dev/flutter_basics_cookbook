import 'package:flutter_basics_widget/basic_widget/weather/screens/location_screen.dart';
import 'package:flutter_basics_widget/basic_widget/weather/screens/city_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart' show SpinKitDoubleBounce;
import 'package:flutter_basics_widget/basic_widget/weather/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _isDataFetched = false;

  @override
  void initState() {
    super.initState();
    getLocationData();
    startTimeout();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    if (mounted) {
      setState(() {
        _isDataFetched = true;
      });
    }

    if (mounted && _isDataFetched) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationWeather: weatherData,
        );
      }));
    }
  }

  void startTimeout() async {
    await Future.delayed(Duration(seconds: 4));

    if (mounted && !_isDataFetched) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return CityScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
