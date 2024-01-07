import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/CustomTextField.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/custom_drop_down_menu.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/detailes_card.dart';
import 'package:navigaty/main.dart';

class MonthlySorohViewBody extends StatefulWidget {
  final String title;
  const MonthlySorohViewBody({super.key, required this.title});

  @override
  State<MonthlySorohViewBody> createState() => _MonthlySorohViewBodyState();
}

class _MonthlySorohViewBodyState extends State<MonthlySorohViewBody> {
  String searchText = '';
  String filter = '';
  List<List<Data?>> filteredData = ExcelFiles.rows;
  filterCraftsData({required String value}) {
    setState(() {
      filteredData = ExcelFiles.rows
          .where((e) => e[5]!.value.toString().startsWith(value))
          .toList();
    });
  }

  filterBoatsNamesData({required String value}) {
    setState(() {
      filteredData = ExcelFiles.rows
          .where((e) => e[2]!.value.toString().startsWith(value))
          .toList();
    });
  }

  List liecensId = [];
  List boatId = [];
  List boatName = [];
  List boatOwnerName = [];
  List strength = [];
  List craft = [];
  List image = [];
  @override
  void initState() {
    print("ddddd");
    liecensId = getRandomDataByIndex(0);
    boatId = getRandomDataByIndex(1);
    boatName = getRandomDataByIndex(2);
    boatOwnerName = getRandomBoatOwnersName();
    strength = getRandomDataByIndex(4);
    craft = getRandomDataByIndex(5);
    image = getRandomBoatImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: widget.title, isBackButtonExists: true),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     CustonDropDownMenu(
        //       onSelected: (value) {
        //         setState(() {
        //           filter = value;
        //           filterCraftsData(value: filter);
        //         });
        //       },
        //     ),
        //     SizedBox(
        //         width: 0.5.sw,
        //         child: CustomTextField(
        //           onChanged: (val) {
        //             setState(() {
        //               searchText = val;
        //               filterBoatsNamesData(value: searchText);
        //             });
        //           },
        //         )),
        //   ],
        // ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: filteredData.length,
         itemBuilder: (context, index) => DetailsCard(
                    liecensId: liecensId[index],
                    boatId: boatId[index],
                    boatName: boatName[index],
                    boatOwnerName: boatOwnerName[index],
                    strength: strength[index],
                    craft: craft[index],
                    image: image[index],
                  )),
        )
      ],
    );
  }
}
