import 'package:flutter/material.dart';
import 'package:netflix/view/coming_soon_screen/coming_soon_screen.dart';

import 'package:netflix/view/downloads_screen/download_screen.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/view/more_sceen/more_screen.dart';
import 'package:netflix/view/search_screen/search_screen.dart';

class Database {
  static List<Map> users = [
    {
      "image": "assets/images/Rectangle 2.png",
      "name": "Emanalo",
      "isSelected": true
    },
    {
      "image": "assets/images/Rectangle 3.png",
      "name": "Onyeka",
      "isSelected": false
    },
    {
      "image": "assets/images/Rectangle 4.png",
      "name": "Aslam",
      "isSelected": false
    },
    {
      "image": "assets/images/Rectangle 5.png",
      "name": "Kids",
      "isSelected": false
    },
  ];
  static List previewImages = [
    "assets/images/Ellipse 2.png",
    "assets/images/Ellipse 3.png",
    "assets/images/Ellipse 4.png",
    "assets/images/Ellipse 2.png",
    "assets/images/Ellipse 3.png",
    "assets/images/Ellipse 4.png"
  ];

  static List continueWatching = [
    "assets/images/Rectangle 13.jpg",
    "assets/images/Rectangle 11.png",
    "assets/images/Rectangle 13.jpg",
    "assets/images/Rectangle 11.png",
  ];

  static List<Map> categories = [
    {
      "Name": "Previews",
      "images": [
        "assets/images/Ellipse 2.png",
        "assets/images/Ellipse 3.png",
        "assets/images/Ellipse 4.png",
        "assets/images/Ellipse 2.png",
        "assets/images/Ellipse 3.png",
        "assets/images/Ellipse 4.png"
      ],
      "shape": "circle",
      "menuVisibility": false,
    },
    {
      "Name": "Continue Watching",
      "images": [
        "assets/images/Rectangle 13.jpg",
        "assets/images/Rectangle 11.png",
        "assets/images/Rectangle 13.jpg",
        "assets/images/Rectangle 11.png",
      ],
      "shape": "Rectangle",
      "menuVisibility": true,
    },
    {
      "Name": "Popular on Netflix",
      "images": [
        "assets/images/Rectangle 15.png",
        "assets/images/Rectangle 14.png",
        "assets/images/Rectangle 16.png",
        "assets/images/Rectangle 15.png",
        "assets/images/Rectangle 14.png",
        "assets/images/Rectangle 16.png"
      ],
      "shape": "rectangle",
      "menuVisibility": false,
    },
    {
      "Name": "Trending Now",
      "images": [
        "assets/images/trending1.png",
        "assets/images/trending2.png",
        "assets/images/trending3.png",
        "assets/images/trending1.png",
        "assets/images/trending2.png",
        "assets/images/trending3.png",
      ],
      "shape": "rectangle",
      "menuVisibility": false,
    },
    {
      "Name": "Top 10 in Nigaria Today",
      "images": [
        "assets/images/top10_1.png",
        "assets/images/top10_2.png",
        "assets/images/top10_3.png",
        "assets/images/top10_1.png",
        "assets/images/top10_2.png",
        "assets/images/top10_3.png",
      ],
      "shape": "rectangle",
      "menuVisibility": false,
    },
  ];
  static List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];

  static List<Map> topSearches = [
    {"name": "Citation", "image": "assets/images/Rectangle 21.png"},
    {"name": "Oloture", "image": "assets/images/Rectangle 22.png"},
    {"name": "The Setup", "image": "assets/images/Rectangle 23.png"},
    {"name": "Breaking Bad", "image": "assets/images/Rectangle 24.png"},
    {"name": "Ozark", "image": "assets/images/Rectangle 25.png"},
    {"name": "The Governor", "image": "assets/images/Rectangle 26.png"},
    {"name": "Your Excellency", "image": "assets/images/Rectangle 27.png"},
    {"name": "Citation", "image": "assets/images/Rectangle 21.png"},
    {"name": "Oloture", "image": "assets/images/Rectangle 22.png"},
    {"name": "The Setup", "image": "assets/images/Rectangle 23.png"},
    {"name": "Breaking Bad", "image": "assets/images/Rectangle 24.png"},
    {"name": "Ozark", "image": "assets/images/Rectangle 25.png"},
  ];

  static List<Map> newArrivals = [
    {
      "name": "Elchapo",
      "image": "assets/images/new arrival 1.png",
      "date": "nov 6"
    },
    {
      "name": "Peaky Blinders",
      "image": "assets/images/new arrival 2.png",
      "date": "nov 6"
    },
  ];

  static List<Map> cominSoon = [
    {
      "title": "Castle & Castle",
      "image": "assets/images/coming soon1.png",
      "season": 1,
      "date": "Decemper 14",
      "discription":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massaid ut ipsum aliquam  enim non posuere pulvinar diam",
      "gener": ["Steamy", "Sopy", "Slow Burn", "teen"]
    },
    {
      "title": "Tiny Pretty Things",
      "image": "assets/images/coming soon2.png",
      "season": 3,
      "date": "june 1",
      "discription":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massaid ut ipsum aliquam  enim non posuere pulvinar diam",
      "gener": ["Steamy", "Sopy", "Slow Burn", "teen", "horror", "drama"]
    },
    {
      "title": "Faster",
      "image": "assets/images/coming soon3.png",
      "season": 6,
      "date": "march 4",
      "discription":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massaid ut ipsum aliquam  enim non posuere pulvinar diam",
      "gener": ["Fantacy", "Scyfi", "Slow Burn", "Fast"]
    }
  ];
  static List<String> homeScreenPosters = [
    "assets/images/dare devil.jpg",
    "assets/images/money heist.jpg",
    "assets/images/peaky Blinders.jpg",
    "assets/images/god father.jpg"
  ];
}
