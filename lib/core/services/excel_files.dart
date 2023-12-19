import 'package:excel/excel.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

class ExcelFiles {
  static List<CellValue?> boatNames = [];
  static List<CellValue?> boatOwnersNames = [];
  static List<CellValue?> crafts = [];
  static List<CellValue?> strengths = [];
  static List<CellValue?> boatsNumbers = [];
  static List<CellValue?> licencesNumber = [];
  static List<List<Data?>> rows = [];
  readData({required int indexSheetNumber}) async {
    ByteData data = await rootBundle.load('assets/files/مراكب الميناء.xlsx');
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);
    var sheetData = List.from(excel.tables.keys)[indexSheetNumber];
    print('#########################################');

    print(sheetData); //sheet Name
    print(excel.tables[sheetData]!.maxColumns);
    print(excel.tables[sheetData]!.maxRows);
    rows = excel.tables[sheetData]!.rows;
    rows.removeAt(0);
    rows.removeAt(0);
    // for (var i = 2; i < rows.length; i++) {
    //   licencesNumber.add(rows[i][0]?.value);
    //   boatsNumbers.add(rows[i][1]?.value);
    //   boatNames.add(rows[i][2]?.value);
    //   boatOwnersNames.add(rows[i][3]?.value);
    //   strengths.add(rows[i][4]?.value);
    //   crafts.add(rows[i][5]?.value);
    //   print('${rows[i][1]?.value}');
    //   print('#########################################');
    // }
  }
}
