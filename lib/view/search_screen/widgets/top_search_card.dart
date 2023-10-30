import 'package:flutter/material.dart';
import '../../../utils/color_constant/color_constant.dart';

class TopSearchCard extends StatelessWidget {
  const TopSearchCard({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: double.infinity,
      color: ColorConstant.SecontaryGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 76,
            width: 146,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    image,
                    // Database.topSearches[index]["image"],
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 32,
              width: 198,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    // Database.topSearches[index]["name"],
                    style: TextStyle(
                        fontSize: 14.72,
                        fontWeight: FontWeight.w400,
                        color: ColorConstant.PrimaryTextColor),
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/bx_bx-play-circle.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
