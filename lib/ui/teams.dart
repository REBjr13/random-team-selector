import 'package:flutter/material.dart';
import 'dart:math';

List teams = [
  Image.asset("images/Chelsea.png", height: 100, width: 100),
  Image.asset("images/Arsenal.png", height: 100, width: 100),
  Image.asset("images/Everton.png", height: 100, width: 100),
  Image.asset("images/Liverpool.png", height: 100, width: 100),
  Image.asset("images/Aston_Vila.png", height: 100, width: 100),
  Image.asset("images/Manutd.png", height: 100, width: 100),
  Image.asset("images/bournemouth.png", height: 100, width: 100),
  Image.asset("images/Crystal_palace.png", height: 100, width: 100),
  Image.asset("images/Newcastle.png", height: 100, width: 100),
  Image.asset("images/Leicester.png", height: 100, width: 100),
];

Image getRandomImage() {
  final random = Random();
  int randomIndex = random.nextInt(teams.length);

  return (teams[randomIndex]);
}
