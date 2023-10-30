import 'package:flutter/material.dart';

import '../../../utils/color_constant/color_constant.dart';

class NewArrivalCard extends StatelessWidget {
  const NewArrivalCard(
      {super.key,
      required this.image,
      required this.releaseDate,
      required this.title});
  final String image;
  final String releaseDate;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      color: ColorConstant.SecontaryGrey,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 5, bottom: 5),
          child: Container(
            height: 55,
            width: 133,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 9, bottom: 9.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Arrival",
                style: TextStyle(
                    fontSize: 13.72,
                    fontWeight: FontWeight.w500,
                    color: ColorConstant.PrimaryTextColor),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 13.72,
                    fontWeight: FontWeight.w500,
                    color: ColorConstant.PrimaryTextColor),
              ),
              Text(
                releaseDate,
                style: TextStyle(
                    fontSize: 10.72,
                    fontWeight: FontWeight.w500,
                    color: Color(0x30ffffff)),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
