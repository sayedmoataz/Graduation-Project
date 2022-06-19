
import 'package:flutter/material.dart';
import '/opening/splash.dart';
import 'package:flutter_offline/flutter_offline.dart';

import 'opening/offline.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) 
        {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            return const SplashScreen();
          } 
          else {
            return const OfflineWidget();
          }
        },
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
