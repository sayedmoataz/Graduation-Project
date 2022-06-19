
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '/Drawer/custom_drawer.dart';
import '/shared/carousel_slider.dart';

import '../shared/components.dart';
import '../shared/constants.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome @ FCAI-HI'),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            mycarouseelslider(imgList),
            const SizedBox(height: 10.0),
            myDividerRow('Dean\'s Message'),
            const SizedBox(height: 10.0),
            Image.asset(deanPic),                
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: [
                    TextSpan(text: deanMsg),
                  ]
                ), 
              )
            ),
            const SizedBox(height: 15.0),
            myDividerRow('Study Program'),
            const SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: studyProgramDesc.length,
                  itemBuilder: (context , i) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: studyProgramContainer(
                      context: context, 
                      details: studyProgramDesc[i], 
                      firstName: studyProgramFName[i], 
                      lastName: studyProgramLName[i], 
                      icon: studyProgramIcon[i],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}