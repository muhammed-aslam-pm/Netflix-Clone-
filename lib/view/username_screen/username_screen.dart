import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/imageconstant.dart';
import 'package:netflix/database/database.dart';

import 'package:netflix/view/username_screen/widgets/user_name_card.dart';

class UsernameScreen extends StatelessWidget {
  const UsernameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryBlack,
      appBar: AppBar(
        title: Image.asset(
          ImageConstant.myLogo,
          height: 32.7,
          width: 138,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              ImageConstant.Pencil,
              height: 24,
              width: 24,
            ),
          )
        ],
        backgroundColor: ColorConstant.primaryBlack,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 67.8),
        child: GridView.builder(
          padding: const EdgeInsets.all(50),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: Database.users.length + 1,
          itemBuilder: (context, index) => index == Database.users.length
              ? Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Image.asset("assets/images/Group 1.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Text(
                          "Add Profile",
                          style:
                              TextStyle(color: ColorConstant.PrimaryTextColor),
                        ),
                      )
                    ],
                  ),
                )
              : UserNameCard(index: index),
        ),
      ),
    );
  }
}
