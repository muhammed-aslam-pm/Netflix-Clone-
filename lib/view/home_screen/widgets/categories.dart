import 'package:flutter/material.dart';

import '../../../database/database.dart';
import '../../../utils/color_constant/color_constant.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 227,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Database.categories[index]["Name"],
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: ColorConstant.PrimaryTextColor),
          ),
          SizedBox(
            height: Database.categories[index]["shape"] == "circle" ? 0 : 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                Database.categories[index]["images"].length,
                (count) => Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Container(
                    height: 163,
                    width: 103,
                    decoration: BoxDecoration(
                      shape: Database.categories[index]["shape"] == "circle"
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(
                              Database.categories[index]["images"][count]),
                          fit: BoxFit.contain),
                    ),
                    child: Visibility(
                      visible: Database.categories[index]["menuVisibility"],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 3,
                            width: 103,
                            color: Colors.red,
                          ),
                          Container(
                            height: 37,
                            width: 103,
                            color: ColorConstant.primaryGrey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  color: ColorConstant.primaryWhite,
                                  icon: const Icon(Icons.info_outline),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert_outlined),
                                  color: ColorConstant.primaryWhite,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Database.categories[index]["shape"] == "circle" ? 0 : 22,
          ),
        ],
      ),
    );
  }
}
