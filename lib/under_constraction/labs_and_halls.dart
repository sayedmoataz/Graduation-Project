// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class LabsAndHalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Labs & Halls"),centerTitle : true ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.grey[350],
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.computer),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Network Lab',
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.play_circle),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.computer),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'H - 1',
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.play_circle),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.computer),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'R - 2',
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.play_circle),
                        ),
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
