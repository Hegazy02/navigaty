import 'dart:ffi';
import 'dart:math';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/navigaty_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NavigatyApp());
  ExcelFiles().readData(indexSheetNumber: 0);
}

List boatsImages = [
  'assets/images/boats/1.jpg',
  'assets/images/boats/2.jpg',
  'assets/images/boats/3.jpg',
  'assets/images/boats/4.jpg',
  'assets/images/boats/5.jpg',
  'assets/images/boats/6.jpg',
  'assets/images/boats/7.jpg',
  'assets/images/boats/8.jpg',
  'assets/images/boats/9.jpg',
  'assets/images/boats/10.jpg',
];
List boatsOnwers = [
  'محمد السعيد',
  'علي الخالدي',
  'يوسف عبدالعزيز',
  'أحمد محسن',
  'نور الدين',
  'عبدالله اسلام',
  'حسين الشريف',
  'عمر  عبدالرحمن',
  'إبراهيم عبدالعزيز',
  'سليمان الرشيد',
  'زياد الحسن',
  'رامي سليمان',
  'طارق العبد',
  'جمال عبدالرحمن',
  'فراس الحسن',
  'ناصر العزيز',
  'سامي الرشيد',
  'رشيد اسلام',
  'زكريا الشريف',
  'ماجد عبدالرحمن',
  'نبيل عبدالعزيز',
];
getRandomBoatOwnersName() {
  List temp = [];
  Random ran = Random();
  for (var i = 0; i < boatsOnwers.length; i++) {
    temp.add(boatsOnwers[ran.nextInt(boatsOnwers.length)]);
  }
  return temp;
}

getRandomBoatImages() {
  List temp = [];
  Random ran = Random();
  for (var i = 0; i < boatsImages.length; i++) {
    temp.add(boatsImages[ran.nextInt(boatsImages.length)]);
  }
  return temp;
}

List<List<Data?>> filteredData = ExcelFiles.rows;

getRandomDataByIndex(int rowNumber) {
  List temp = [];
  Random ran = Random();
  for (var i = 0; i < filteredData.length; i++) {
    temp.add(filteredData[ran.nextInt(filteredData.length)][rowNumber]
        ?.value
        .toString());
  }
  return temp;
}
