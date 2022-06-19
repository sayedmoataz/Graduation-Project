
// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';


//import 'package:my_test_shop/shared/cubit/login_cubit/login_cubit.dart';

Widget MyTextFormField({
  required BuildContext context,
  TextEditingController? controller,
  TextInputType? inputType,
  bool obsecure = false,
  String? hint,
  Widget? icon,
  int? length,
  int? lines,
  InputBorder? border = const OutlineInputBorder(),
}) =>
    TextFormField(
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      controller: controller,
      keyboardType: inputType,
      obscureText: obsecure,
      maxLength: length,
      maxLines: lines,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: icon,
        border: border,
        contentPadding: const EdgeInsets.all(10),
      ),
      validator: (Value) {
        return '$controller Must Not be Empty';
      },
    );

Row myDividerRow(title) => Row(
  children: [
    const SizedBox(height: 20,child: VerticalDivider(thickness: 5, color: Colors.blue)),
    Text(title,style: const TextStyle(fontSize: 24,color: Colors.blueGrey))
  ],
);

Container studyProgramContainer({
  required BuildContext context, 
  required IconData icon,
  required String firstName, 
  required String lastName, 
  required String details,
}) =>Container(
  width: MediaQuery.of(context).size.width * 75 ,
  decoration:BoxDecoration(
    color: Colors.blue[100],
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(15.0),
      bottomLeft: Radius.circular(15.0),
    ),
  ),
  child: FlipCard(
    fill: Fill.fillBack, 
    direction: FlipDirection.HORIZONTAL,
    front: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 160),
          Text(firstName, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Text(lastName, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.normal))
        ],
      ),
    ),
    back: SingleChildScrollView(
    child: Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('$firstName $lastName' , style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(details , textAlign: TextAlign.center ,style: const TextStyle(fontSize: 18)),
      ]
    )
  )
  )
);

PreferredSizeWidget myappbar({
  context, title
})=> AppBar(
  title: Text(title),
  //backgroundColor: HexColor('#0029e7'),
  //systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: HexColor('#0029e7')),
  actions: [
  IconButton(
    onPressed: () {},
    icon: const Icon(Icons.search),
    padding: const EdgeInsets.only(right: 10.0),
  ),
  IconButton(
    onPressed: () {},
    icon: const Icon(Icons.notifications_active),
    padding: const EdgeInsets.only(right: 10.0),
  ),
],
);

void NavigateTo(context, widget) =>Navigator.push(
  context, MaterialPageRoute(builder: (context) => widget));

void navigateFinalTo(context, widget) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => widget));

Visibility MyVisibility ({
  required bool Visible, 
  required String DeptDetails,
  required String Doctors,
  required String Courses,
}) => Visibility(
  visible: Visible,
  child: Container(
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.grey[200]),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
        Text("Department Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 , color: Colors.blue[300]),),
        Text(DeptDetails),
        Text('Department Doctors', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 , color: Colors.blue[300]),),
        Text(Doctors),
        Text('Department Courses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 , color: Colors.blue[300]),),
        Text(Courses),        
        ],
      ) 
    ),
  )
);

Container MyDeptContainer({
  switchValue,
  isVisible,
  DeptName,
  setState
})
=>Container(
  child: Row(
    children: [
      Switch(
        value: switchValue,
        onChanged: (value) {
          switchValue = value;
          isVisible = !isVisible;
          setState(() {});
        },
      ),
      TextButton(
        child: Text(DeptName),
        onPressed: () {},
      ),
    ],
  ),
);