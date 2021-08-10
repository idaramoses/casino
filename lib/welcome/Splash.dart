import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  String _networkStatus = 'Unknown';
  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<void> initConnectivity() async {
    ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
//      case ConnectivityResult.none:
        //todo: i added this to ensure there is internet connection
        try {
          final result = await InternetAddress.lookup('google.com');
          if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
            print('connected');
            print(result);
            setState(() {
              _networkStatus = 'connected';
              // _showMsg(_networkStatus.toString());
              _network();
            });
          }
        } on SocketException catch (_) {
          print('not connected');
          setState(() {
            _networkStatus = 'no internet connection';
            // _showMsg(_networkStatus.toString());
            _network();
          });
        }
        //todo: end here
        setState(() => _connectionStatus = result.toString());
        break;
      case ConnectivityResult.none:
        setState(() {
          _networkStatus = 'no internet connection';
          _network();
          // _showMsg(_networkStatus.toString());
          _connectionStatus = result.toString();
        });

        break;
      default:
        setState(() {
          _connectionStatus = 'Failed to get connectivity.';
          _networkStatus = 'no internet connection';
          _network();
        });
        break;
    }
  }

  void _network() {
    if (_networkStatus == 'no internet connection') {
       Navigator.of(context).pushReplacementNamed("/home");
    } else {
      print(_networkStatus);
       _fetchRemoteConfig();
    }
  }

  @override
  void initState() {
    this.startTime();
    super.initState();
  }

  startTime() async {
    var _duration = new Duration(seconds: 6);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
     _fetchRemoteConfig();
      initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    _initializeRemoteConfig();
    //Navigator.of(context).pushReplacementNamed("/home");
  }

  static RemoteConfig _remoteConfig;
  _initializeRemoteConfig() async {
    if (_remoteConfig == null) {
      _remoteConfig = await RemoteConfig.instance;

      final Map<String, dynamic> defaults = <String, dynamic>{
        'open_browser': false
      };
      await _remoteConfig.setDefaults(defaults);

      _remoteConfig.setConfigSettings(RemoteConfigSettings(
        minimumFetchIntervalMillis: 1,
        fetchTimeoutMillis: 1,
      ));

      await _fetchRemoteConfig();
    }
  }

  Future<void> _fetchRemoteConfig() async {
    try {
      await _remoteConfig.fetch(expiration: const Duration(milliseconds: 1));
      await _remoteConfig.activateFetched();

      print('Last fetch status: ' + _remoteConfig.lastFetchStatus.toString());
      print('Last fetch time: ' + _remoteConfig.lastFetchTime.toString());
      print(
          'open_browser?: ' + _remoteConfig.getBool('open_browser').toString());

      setState(() {
        _remoteConfig.getBool('open_browser')
            ? _launchURL()
            : defaultnavigationPage();
      });
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }

  _launchURL() async {
    const url = 'https://www.casinotopsonline.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void defaultnavigationPage() {
    Navigator.of(context).pushReplacementNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: CachedNetworkImage(
                imageUrl:
                    "https://media.istockphoto.com/photos/the-croupier-holds-a-roulette-ball-in-a-casino-in-his-hand-picture-id1158005632?k=6&m=1158005632&s=612x612&w=0&h=tUB1pWZ-gDkExlp70uK5zek8tHjtVuf8bMlCAIsarV8=",
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fitHeight,
                        colorFilter: ColorFilter.mode(
                            Colors.transparent, BlendMode.colorBurn)),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Top Casino',
                  style: TextStyle(
                    backgroundColor: Colors.black12,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Best casino app',
                  style: TextStyle(
                    backgroundColor: Colors.black12,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
