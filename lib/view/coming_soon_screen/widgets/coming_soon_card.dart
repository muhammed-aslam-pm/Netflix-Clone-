import 'package:flutter/material.dart';

import '../../../database/database.dart';
import '../../../utils/color_constant/color_constant.dart';

class CominSoonCard extends StatelessWidget {
  const CominSoonCard(
      {super.key,
      required this.image,
      required this.title,
      required this.discription,
      required this.index,
      required this.season,
      required this.date});
  final String image;
  final String title;
  final String discription;
  final int index;
  final int season;
  final String date;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 170,
            width: 375,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 35,
                          color: ColorConstant.PrimaryTextColor,
                        ),
                        Text(
                          "Remind me",
                          style: TextStyle(
                              fontSize: 11.13,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.PrimaryTextColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 45,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share_rounded,
                          size: 35,
                          color: ColorConstant.PrimaryTextColor,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                              fontSize: 11.13,
                              fontWeight: FontWeight.w400,
                              color: ColorConstant.PrimaryTextColor),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  """Season $season Coming $date""",
                  style: TextStyle(
                      fontSize: 11.4,
                      color: ColorConstant.PrimaryTextColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 13.13,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.66,
                      color: ColorConstant.PrimaryTextColor),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  discription,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      fontSize: 11.14,
                      color: ColorConstant.PrimaryTextColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: List.generate(
                    Database.cominSoon[index]["gener"].length,
                    (count) => Text(
                      """${Database.cominSoon[index]["gener"][count]} . """,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11.4,
                          color: ColorConstant.PrimaryTextColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
