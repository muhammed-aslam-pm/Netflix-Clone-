import 'package:flutter/material.dart';
import '../../../database/database.dart';
import '../../bottom_nav_bar/bottom_navbar.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard(
      {super.key,
      required this.index,
      this.height = 118,
      this.width = 100,
      this.fontSize = 13.25});
  final int index;
  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BottomNavBar(),
          ),
        );
      },
      child: Container(
        height: Database.users[index]["isSelected"] ? height + 8 : height,
        width: Database.users[index]["isSelected"] ? width + 8 : width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: Database.users[index]["isSelected"]
                  ? height - 21
                  : height - 29,
              width: Database.users[index]["isSelected"] ? width + 8 : width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Database.users[index]['image']),
                  ),
                  borderRadius: BorderRadius.circular(7)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Database.users[index]['name'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
