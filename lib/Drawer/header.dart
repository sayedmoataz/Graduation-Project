import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 90,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/fcai_logo_final_en.png" , width: 250,)
        ],
      ),
    );
  }
}
