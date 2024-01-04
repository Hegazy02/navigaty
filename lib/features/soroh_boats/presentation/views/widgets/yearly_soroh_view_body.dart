import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/CustomTextField.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/custom_drop_down_menu.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/detailes_card.dart';
import 'package:navigaty/main.dart';

class YearlySorohViewBody extends StatefulWidget {
  final String title;
  const YearlySorohViewBody({super.key, required this.title});

  @override
  State<YearlySorohViewBody> createState() => _YearlySorohViewBodyState();
}

class _YearlySorohViewBodyState extends State<YearlySorohViewBody> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: widget.title, isBackButtonExists: true),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustonDropDownMenu(
              onSelected: (value) {
                setState(() {
                  filter = value;
                  filterCraftsData(value: filter);
                });
              },
            ),
            SizedBox(
                width: 0.5.sw,
                child: CustomTextField(
                  onChanged: (val) {
                    setState(() {
                      searchText = val;
                      filterBoatsNamesData(value: searchText);
                    });
                  },
                )),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: filteredData.length,
              itemBuilder: (context, index) => DetailsCard(
                    liecensId: "${filteredData[index][0]?.value}",
                    boatId: "${filteredData[index][1]?.value}",
                    boatName: "${filteredData[index][2]?.value}",
                    boatOwnerName: "${getRandomBoatOwnersName()}",
                    strength: "${filteredData[index][4]?.value}",
                    craft: "${filteredData[index][5]?.value}",
                  )),
        )
      ],
    );
  }
}
