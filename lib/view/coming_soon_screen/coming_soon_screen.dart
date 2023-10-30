import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/imageconstant.dart';
import 'package:netflix/view/coming_soon_screen/widgets/coming_soon_card.dart';
import 'package:netflix/view/coming_soon_screen/widgets/new_arrival_card.dart';

import '../../database/database.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Image.asset(ImageConstant.notificationIcon),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                          color: ColorConstant.PrimaryTextColor,
                          fontSize: 16.91,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: Database.newArrivals.length,
              itemBuilder: (context, index) => NewArrivalCard(
                  image: Database.newArrivals[index]["image"],
                  releaseDate: Database.newArrivals[index]["date"],
                  title: Database.newArrivals[index]["name"]),
            ),
            const SizedBox(
              height: 25,
            ),
            ListView.builder(
              itemCount: Database.cominSoon.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CominSoonCard(
                image: Database.cominSoon[index]["image"],
                title: Database.cominSoon[index]["title"],
                discription: Database.cominSoon[index]["discription"],
                index: index,
                season: Database.cominSoon[index]["season"],
                date: Database.cominSoon[index]["date"],
              ),
            )
          ],
        ),
      ),
    );
  }
}
