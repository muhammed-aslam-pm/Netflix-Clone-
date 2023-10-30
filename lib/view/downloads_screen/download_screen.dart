import 'package:flutter/material.dart';
import '../../utils/color_constant/color_constant.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Text(
                "Smart downloads",
                style: TextStyle(
                    fontSize: 14.72,
                    fontWeight: FontWeight.w400,
                    color: ColorConstant.PrimaryTextColor),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "Introducing Downloads For You",
              style: TextStyle(
                  fontSize: 19.63,
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.PrimaryTextColor),
            ),
            const SizedBox(
              height: 12.32,
            ),
            Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.""",
              style: TextStyle(
                  fontSize: 10.78,
                  fontWeight: FontWeight.w400,
                  color: ColorConstant.PrimaryTextColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 88.5,
                  backgroundColor: ColorConstant.SecontaryGrey,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40.89,
                  width: 353,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("SET UP"),
                  ),
                ),
                const SizedBox(
                  height: 49,
                ),
                SizedBox(
                  height: 33,
                  width: 239,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      ColorConstant.SecontaryGrey,
                    )),
                    child: const Text("Find Somthing To Download"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
