import 'dart:ui';

import 'package:for_saknon/src/config/utils/app_assets.dart';

class Animal {
  final String nameEn;
  final String nameAr;
  final String image;
  final String voice;
  final Color color;

  const Animal({
    required this.nameEn,
    required this.nameAr,
    required this.image,
    required this.voice,
    required this.color,
  });

  static const List<Animal> animals = [
    Animal(
      nameEn: "cat",
      nameAr: "قطة",
      image: AppAssets.cat,
      voice: AppAssets.catV,
      color: Color(0xFFFEE1D2),
    ),
    Animal(
      nameEn: "chicken",
      nameAr: "دجاجة",
      image: AppAssets.chicken,
      voice: AppAssets.chickenV,
      color: Color(0xFFE3D3CC),
    ),
    Animal(
      nameEn: "cow",
      nameAr: "بقرة",
      image: AppAssets.cow,
      voice: AppAssets.cowV,
      color: Color(0xFF81E8F5),
    ),
    Animal(
      nameEn: "dog",
      nameAr: "كلب",
      image: AppAssets.dog,
      voice: AppAssets.dogV,
      color: Color(0xFFF0E1CC),
    ),
    Animal(
      nameEn: "duck",
      nameAr: "بطة",
      image: AppAssets.duck,
      voice: AppAssets.duckV,
      color: Color(0xFF8EF09E),
    ),
    Animal(
      nameEn: "frog",
      nameAr: "ضفدع",
      image: AppAssets.frog,
      voice: AppAssets.frogV,
      color: Color(0xFFDAFDB0),
    ),
    Animal(
      nameEn: "goat",
      nameAr: "ماعز",
      image: AppAssets.goat,
      voice: AppAssets.goatV,
      color: Color(0xFF8EF09E),
    ),
    Animal(
      nameEn: "horse",
      nameAr: "حصان",
      image: AppAssets.horse,
      voice: AppAssets.horseV,
      color: Color(0xFFEFEAD1),
    ),
    Animal(
      nameEn: "lion",
      nameAr: "أسد",
      image: AppAssets.leo,
      voice: AppAssets.leoV,
      color: Color(0xFFFCDA9D),
    ),
    Animal(
      nameEn: "mouse",
      nameAr: "فأر",
      image: AppAssets.mouse,
      voice: AppAssets.mouseV,
      color: Color(0xFFFBD1B1),
    ),
  ];
}
