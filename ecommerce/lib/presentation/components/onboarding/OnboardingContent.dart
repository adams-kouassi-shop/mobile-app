import 'dart:ui';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

class Slide {
  final String title;
  final String description;
  final String pathImage;
  final int heightImage;
  final int widthImage;
  final Color backgroundColor;

  Slide({
    required this.title,
    required this.description,
    required this.pathImage,
    required this.heightImage,
    required this.widthImage,
    required this.backgroundColor,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Gère ton activité avec Mayacred",
    image: "assets/images/signUp_dark.png",
    desc: "",
  ),
  OnboardingContents(
    title: "Obtiens un crédit pour développer ton business",
    image: "assets/images/signUp_light.png",
    desc: "",
  ),
  OnboardingContents(
    title: "Bénéficie d'un suivi personnalisé et rembourse sereinement",
    image: "assets/images/login_dark.png",
    desc: "",
  ),
];