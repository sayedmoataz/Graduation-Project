// ignore_for_file: non_constant_identifier_names, use_function_type_syntax_for_parameters, unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '/unity.dart';
import '/shared/components.dart';
import '/under_constraction/Departments.dart';
import '/under_constraction/labs_and_halls.dart';

import '../under_constraction/doctor_modules.dart';
import '../under_constraction/students.dart';
import 'bottom_user_info.dart';
import 'custom_list_tile.dart';
import 'header.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {


  @override
  Widget build(BuildContext context) {
    var size,width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return SafeArea(
      child: AnimatedContainer(
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 500),
        width: width * .85,
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDrawerHeader(),
              const Divider(color: Colors.blueGrey, indent: 50,endIndent: 50),
              // home page
              CustomListTile(
                icon: Icons.home,
                title: 'Home Page' ,
                infoCount: 0,
                OnTab: () => Navigator.pop(context)
              ),
              const SizedBox(height: 20.0),
              // Departments
              CustomListTile(
                icon: Icons.favorite,
                title:'Departments',
                infoCount: 0,
                OnTab: () {
                  Navigator.pop(context);
                  NavigateTo(context, const Departments());
                }
              ),
              const SizedBox(height: 20.0),
              // labs & halls
              CustomListTile(
                icon: Icons.local_library_sharp,
                title:   'labs & halls',
                infoCount: 0,
                OnTab: () {
                  Navigator.pop(context);
                  NavigateTo(context, LabsAndHalls());
                },
              ),
              const SizedBox(height: 20.0),
              // AR Module
              CustomListTile(
                icon: Icons.message,
                title:   'AR Module' ,
                infoCount: 0,
                OnTab: () {
                  Navigator.pop(context);
                  NavigateTo(context, const UnityViewPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
