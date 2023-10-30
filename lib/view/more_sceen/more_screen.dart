import 'package:flutter/material.dart';
import 'package:netflix/database/database.dart';
import 'package:netflix/view/username_screen/widgets/user_name_card.dart';
import '../../utils/color_constant/color_constant.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                Database.users.length + 1,
                (index) => index == Database.users.length
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstant.PrimaryTextColor,
                                  width: 1)),
                          height: 53,
                          width: 63,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: ColorConstant.PrimaryTextColor,
                              size: 35,
                            ),
                          ),
                        ),
                      )
                    : UserNameCard(
                        index: index,
                        height: 82,
                        width: 62,
                        fontSize: 11,
                      ),
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 12,
                width: 12,
                child: Image.asset('assets/images/bx_bxs-pencil.png'),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                "Manage Profiles",
                style: TextStyle(
                    fontSize: 14.72,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.PrimaryTextColor),
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            height: 247,
            width: double.infinity,
            color: ColorConstant.greyLight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, top: 19),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.message_sharp,
                          color: ColorConstant.PrimaryTextColor,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              fontSize: 19.63,
                              fontWeight: FontWeight.w700,
                              color: ColorConstant.PrimaryTextColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, """,
                      style: TextStyle(
                          fontSize: 10.14,
                          color: ColorConstant.PrimaryTextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.78,
                        color: ColorConstant.SecontaryGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 37,
                          width: 240,
                          color: ColorConstant.primaryBlack,
                        ),
                        SizedBox(
                          height: 37,
                          width: 88,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  ColorConstant.PrimaryTextColor),
                            ),
                            child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: ColorConstant.primaryBlack),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Image(
                            image:
                                AssetImage("assets/images/whatsapp Icon.png")),
                        Container(
                          height: 41,
                          width: 1,
                          color: ColorConstant.greyTextColor,
                        ),
                        const Image(
                            image:
                                AssetImage("assets/images/facebook icon.png")),
                        Container(
                          height: 41,
                          width: 1,
                          color: ColorConstant.greyTextColor,
                        ),
                        const Image(
                            image: AssetImage("assets/images/gmail icon.png")),
                        Container(
                          height: 41,
                          width: 1,
                          color: ColorConstant.greyTextColor,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.more_horiz_sharp,
                              color: ColorConstant.PrimaryTextColor,
                            ),
                            Text(
                              "More",
                              style: TextStyle(
                                  color: ColorConstant.PrimaryTextColor),
                            )
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, bottom: 5),
            child: Row(
              children: [
                const Image(image: AssetImage("assets/images/done.png")),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "My List",
                    style: TextStyle(
                        color: ColorConstant.PrimaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.5),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: ColorConstant.greyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  child: Text(
                    "App Settings",
                    style: TextStyle(color: ColorConstant.PrimaryTextColor),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    "Accounds",
                    style: TextStyle(color: ColorConstant.PrimaryTextColor),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    "Help",
                    style: TextStyle(color: ColorConstant.PrimaryTextColor),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(color: ColorConstant.PrimaryTextColor),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
