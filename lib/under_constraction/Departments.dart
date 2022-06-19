// ignore_for_file: file_names, deprecated_member_use, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../shared/components.dart';

class Departments extends StatefulWidget {
  const Departments({Key? key}) : super(key: key);

  @override
  State<Departments> createState() => _DepartmentsState();
}

class _DepartmentsState extends State<Departments> {
    bool switchValue1 = false;
    bool isVisible1 = false;
    bool switchValue2 = false;
    bool isVisible2 = false;
    bool switchValue3 = false;
    bool isVisible3 = false;
    bool switchValue4 = false;
    bool isVisible4 = false;
    bool switchValue5 = false;
    bool isVisible5 = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("College Departments"),centerTitle : true ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  // CS
                  Container(
                    width: double.infinity,
                    color: Colors.blueAccent,
                    child: const Text(
                      "Computer Science",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white
                      ),
                    ),
                  ),
                  // brief
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Text(
                      'Brief',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // details
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Text(
                      'The Department of computer science is concerned with teaching the basics of computer science, and what this requires from a study of logical design and computer mathematics. The Department is also concerned with teaching software of its various types, whether it is system software or application software, as well as artificial intelligence.',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  // Department Programs
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Department Programs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Wrap(
                          runSpacing: 16,
                          children: [
                            // Switch
                            Container(
                              child: Row(
                                children: [
                                  Switch(
                                    value: switchValue5,
                                    onChanged: (value) {
                                      switchValue5 = value;
                                      isVisible5 = !isVisible5;
                                      setState(() {});
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Computer Science'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            // details
                            MyVisibility(
                              Visible: isVisible5,
                              DeptDetails: 'The program of computer science is concerned with teaching the basics of computer science, and what this requires from a study of logical design and computer mathematics. The program is also concerned with teaching software of its various types, whether it is system software or application software, as well as artificial intelligence .',
                              Doctors: "DR. Marwa AbdEl-Fattah  -  DR. Ensaf Hussian  -  DR. Amal AbuTabl",
                              Courses: "Computer Organization - Compilers",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                
                  const Divider(),
                  Container(
                    width: double.infinity,
                    color: Colors.blueAccent,
                    child: const Text(
                      "Information System",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Text(
                      'Brief',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Text(
                      'The department of Information Systems is interested in teaching the basics of information systems, analysis, design and applications, both current and advanced, and the section is also concerned with teaching office automation and database systems of various types, data mining and knowledge discovery, and management of information centers. The department of Information Systems is the link between the disciplines of computer science and the various fields of work, which helps students gain knowledge and skills, to analyze and design information systems in any of the governmental or private business organizations and institutions..',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Department Programs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Wrap(
                          runSpacing: 16,
                          children: [
                             // Switch
                            Container(
                              child: Row(
                                children: [
                                  Switch(
                                    value: switchValue1,
                                    onChanged: (value) {
                                      switchValue1 = value;
                                      isVisible1 = !isVisible1;
                                      setState(() {});
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Information System'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            // details
                            MyVisibility(
                              Visible: isVisible1,
                              DeptDetails: 'The program of Information Systems is interested in teaching the basics of information systems, analysis, design and applications, both current and advanced, and the section is also concerned with teaching office automation and database systems of various types, data mining and knowledge discovery, and management of information centers. The program of Information Systems is the link between the disciplines of computer science and the various fields of work, which helps students gain knowledge and skills, to analyze and design information systems in any of the governmental or private business organizations and institutions.',
                              Doctors: "DR. Ahmed El-Sayed  -  DR. Mona Nasr  -  DR. Doaa Saad",
                              Courses: "Decision Support Systems - Management Information System",
                            ),
                             // Switch
                            Container(
                              child: Row(
                                children: [
                                  Switch(
                                    value: switchValue2,
                                    onChanged: (value) {
                                      switchValue2 = value;
                                      isVisible2 = !isVisible2;
                                      setState(() {});
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('SoftWare Engineering'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            // details
                            MyVisibility(
                              Visible: isVisible2,
                              DeptDetails: 'The software engineering program is interested in studying all aspects of high-quality software production, taking into account user requirements. This includes various stages of software development which include problem analysis, and then design, writing the program until it has been tried, tested, installed on hardware, and carried out its maintenance process.',
                              Doctors: "DR. Amr Samy  -  DR. Hala Abd El-Jalil",
                              Courses: "Software Engineering 1 - Software Engineering 2 - Methodology",
                            ),
                            // Switch
                            Container(
                              child: Row(
                                children: [
                                  Switch(
                                    value: switchValue3,
                                    onChanged: (value) {
                                      switchValue3 = value;
                                      isVisible3 = !isVisible3;
                                      setState(() {});
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Medical Informatics'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            // details
                            MyVisibility(
                              Visible: isVisible3,
                              DeptDetails: 'The program of medical informatics  specialized in designing and developing information technology and its applications in a practical way within medical institutions. This software helps to provide doctors and surgeons with accurate quantitative and visual data on the patient’s health condition, which in turn contributes to more accurately diagnosing various diseases',
                              Doctors: "",
                              Courses: "",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  
                  const Divider(),
                  Container(
                    width: double.infinity,
                    color: Colors.blueAccent,
                    child: const Text(
                      "Information Technology",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Text(
                      'Brief',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: const Text(
                      'The Department of Information Technology is concerned with teaching the basics of information technology, pattern recognition, letters and software, digital signal processing, computer vision, multimedia, information engineering and information networks as well as computer drawing systems, image processing and microprocessors.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Department Programs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Wrap(
                          runSpacing: 16,
                          children: [
                            // Switch
                            Container(
                              child: Row(
                                children: [
                                  Switch(
                                    value: switchValue4,
                                    onChanged: (value) {
                                      switchValue4 = value;
                                      isVisible4 = !isVisible4;
                                      setState(() {});
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Information Technology'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            // details
                            MyVisibility(
                              Visible: isVisible4,
                              DeptDetails: 'The program of Information Technology is concerned with teaching the basics of information technology, pattern recognition, letters and software, digital signal processing, computer vision, multimedia, information engineering and information networks as well as computer drawing systems, image processing and microprocessors',
                              Doctors: "DR. Hossam Shmardan  -  DR. Mahmoud El-Kholi",
                              Courses: "Patteren Recongition - Networks - Multimedia",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
