import 'package:flutter/material.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/navigaty_app.dart';

void main() {
  runApp(const NavigatyApp());
  ExcelFiles().readData(indexSheetNumber: 0);
}
