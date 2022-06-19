
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomUserInfo extends StatelessWidget {
  final bool isCollapsed;
  final bool isEnglish;

  const BottomUserInfo({
    Key? key, required this.isCollapsed, required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isCollapsed ? 70 : 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: isCollapsed
      ? Center(
        child: InkWell(
          onTap: ( ) { },
          child: Row(
            children: [
              // photo
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.logout,color: HexColor('#0029e7'))
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  isEnglish? 'Logout' : 'تسجيل الخروج',
                  style: TextStyle(color:HexColor('#dd2634'), fontSize: 24, fontWeight: FontWeight.bold),
                )
              ),
            ],
          )
        ),
      )
      : Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: ( ) { },
              icon: const Icon(Icons.logout,
              color: Colors.white,size: 18),
            ),
          ),
        ],
      ),
    );
  }
}