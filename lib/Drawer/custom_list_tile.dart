// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final IconData? doHaveMoreOptions;
  final int infoCount;
  final VoidCallback OnTab;

  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    this.doHaveMoreOptions,
    required this.infoCount,
    required this.OnTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // action 
      onTap: OnTab,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width:300,
        height: 60,
        child: Row(
          children: [
            // counter
            Expanded(
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(icon,color: Colors.blue,),
                    if (infoCount > 0)
                      Positioned(
                        right: -5,top: -5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            // title // info count
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  // title
                  Expanded(
                    flex: 4,
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(color:Colors.blueGrey, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // info count
                  if (infoCount > 0)
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple[200],
                        ),
                        child: Center(
                          child: Text(
                            infoCount.toString(),
                            style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            // counter action
            Expanded(
              flex: 1,
              child: doHaveMoreOptions != null
              ? IconButton(
                  icon: Icon(
                    doHaveMoreOptions,
                    color: Colors.white,size: 12,
                  ),
                  onPressed: () {},
              )
              : const Center(),
            ),
          ],
        ),
      ),
    );
  }
}
