import 'dart:ffi';
import 'dart:math';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/navigaty_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const NavigatyApp());
  await ExcelFiles().readData(indexSheetNumber: 0);
  getData();
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
  'assets/images/boats/8.jpg',
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
  'assets/images/boats/8.jpg',
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
  Random ran = Random();
  return boatsOnwers[ran.nextInt(boatsOnwers.length)];
}

getRandomBoatImages() {
  Random ran = Random();
  return boatsImages[ran.nextInt(boatsImages.length)];
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

List getData() {
  List temp = [];

  for (var i = 0; i < ExcelFiles.rows.length; i++) {
    temp.add({
      "liecensId": ExcelFiles.rows[i][0]!.value.toString(),
      "boatId": ExcelFiles.rows[i][1]!.value.toString(),
      "boatName": ExcelFiles.rows[i][2]!.value.toString(),
      "strength": ExcelFiles.rows[i][4]!.value.toString(),
      "craft": ExcelFiles.rows[i][5]!.value.toString(),
      "boatOwnerName": getRandomBoatOwnersName(),
      "image": getRandomBoatImages(),
    });
  }
  print("temp $temp");
  temp.shuffle();
  return temp;
}
