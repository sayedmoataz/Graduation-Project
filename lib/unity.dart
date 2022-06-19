// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';

class UnityViewPage extends StatefulWidget {
  const UnityViewPage({Key? key}) : super(key: key);

  @override
  _UnityViewPageState createState() => _UnityViewPageState();
}

class _UnityViewPageState extends State<UnityViewPage> {
  UnityViewController? unityViewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Module'),
      ),
      body: UnityView(
        onCreated: onUnityViewCreated,
        onReattached: onUnityViewReattached,
        onMessage: onUnityViewMessage,
      ),
    );
  }

  void onUnityViewCreated(UnityViewController? controller) {
    print('onUnityViewCreated');

    unityViewController = controller;

    controller?.send(
      'Cube',
      'SetRotationSpeed',
      '30',
    );
  }

  void onUnityViewReattached(UnityViewController controller) {
    print('onUnityViewReattached');
  }

  void onUnityViewMessage(UnityViewController controller, String? message) {
    print('onUnityViewMessage');

    print(message);
  }

}