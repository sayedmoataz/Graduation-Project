import 'package:flutter/material.dart';

class OfflineWidget extends StatelessWidget {
  const OfflineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/undraw_warning_cyit.png'),
          const Text(
            'Please Check Your Internet Connection',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
