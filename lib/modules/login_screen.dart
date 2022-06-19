// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names, curly_braces_in_flow_control_structures, unused_element, no_logic_in_create_state, avoid_print, avoid_unnecessary_containers, unused_import, unused_local_variable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import '/modules/homePage.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var emailcontroller = TextEditingController();
    var passwordController = TextEditingController();
    bool isPassword = true;
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/relax_image.png',
                    ),
                    /*Text(
                      'LOG-IN',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    */
                    SizedBox(height: 40.0),
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email Must not be empty';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is too short';
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'password',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'LOG-IN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Register Now',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
