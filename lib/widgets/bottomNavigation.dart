import 'package:flutter/material.dart';
import 'package:football_live/constants.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.icon,
    required this.icontitle,
    this.onTap,
    required this.isActive,
  });
  final String icontitle;
  final IconData icon;
  final Function()? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(microseconds: 200),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? FprimaryColor : FbackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: isActive ? Colors.white : Colors.grey.shade500,
            ),
            isActive
                ? Text(
                    icontitle,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
