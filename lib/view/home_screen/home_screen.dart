import 'package:flutter/material.dart';
import 'package:netflix/database/database.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';
import 'package:netflix/utils/image_constant/imageconstant.dart';
import 'package:netflix/view/home_screen/widgets/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                  itemCount: Database.homeScreenPosters.length,
                  itemBuilder: (context, index, realIndex) => Container(
                        height: 440,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(Database.homeScreenPosters[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                  options: CarouselOptions(
                      viewportFraction: 1, height: 440, autoPlay: true)),
              Container(
                height: 440,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.transparent
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),
              ),
              Positioned(
                height: 57,
                width: 400,
                top: 47,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 57,
                        width: 53,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.smallLogo),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "TV Shows",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.2,
                              color: ColorConstant.PrimaryTextColor),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Movies",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.2,
                              color: ColorConstant.PrimaryTextColor),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "My List",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17.2,
                              color: ColorConstant.PrimaryTextColor),
                        ),
                      ),
                    ]),
              ),
              Positioned(
                left: 109,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorConstant.PrimaryTextColor, width: 1)),
                  child: Column(
                    children: [
                      Text(
                        "Top",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            color: ColorConstant.PrimaryTextColor),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            color: ColorConstant.PrimaryTextColor),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 129,
                top: 415,
                child: SizedBox(
                  height: 20,
                  width: 200,
                  child: Text(
                    "#2 in India Today",
                    style: TextStyle(
                        color: ColorConstant.PrimaryTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 54),
            child: SizedBox(
              height: 45,
              width: 259,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 41,
                    width: 45,
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: ColorConstant.PrimaryTextColor,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(
                              fontSize: 13.64,
                              color: ColorConstant.PrimaryTextColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 110.63,
                    decoration: BoxDecoration(
                      color: ColorConstant.PrimaryTextColor,
                      borderRadius: BorderRadius.circular(5.63),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 30,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(
                                fontSize: 20.46, fontWeight: FontWeight.w600),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 45,
                    width: 24,
                    child: Column(
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: ColorConstant.PrimaryTextColor,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                              fontSize: 13.64,
                              color: ColorConstant.PrimaryTextColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Database.categories.length,
                itemBuilder: (context, index) => CategoriesCard(index: index)),
          ),
        ],
      ),
    );
  }
}
