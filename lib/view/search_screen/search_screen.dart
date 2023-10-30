import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/view/search_screen/widgets/top_search_card.dart';

import '../../database/database.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 52,
              width: double.infinity,
              color: ColorConstant.primaryGrey,
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Search for a Movie ,Show, gener ,e.t.c.  ",
                    hintStyle:
                        TextStyle(color: ColorConstant.secontaryTextColor),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: ColorConstant.secontaryTextColor,
                    ),
                    prefixIcon: Icon(Icons.search,
                        color: ColorConstant.secontaryTextColor),
                    fillColor: ColorConstant.SecontaryGrey,
                    filled: true),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              "Top Searches",
              style: TextStyle(
                  color: ColorConstant.PrimaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 26.75),
            ),
            const SizedBox(
              height: 21,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => TopSearchCard(
                    image: Database.topSearches[index]["image"],
                    title: Database.topSearches[index]["name"]),
                separatorBuilder: (context, index) => const Divider(
                      height: 3,
                    ),
                itemCount: Database.topSearches.length)
          ],
        ),
      ),
    );
  }
}
