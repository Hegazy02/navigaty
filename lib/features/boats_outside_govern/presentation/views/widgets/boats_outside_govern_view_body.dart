import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/CustomTextField.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/custom_drop_down_menu.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/detailes_card.dart';
import 'package:navigaty/main.dart';

class BoatsOutsideGovernViewBody extends StatefulWidget {
  final String title;
  const BoatsOutsideGovernViewBody({super.key, required this.title});

  @override
  State<BoatsOutsideGovernViewBody> createState() =>
      _BoatsOutsideGovernViewBodyState();
}

class _BoatsOutsideGovernViewBodyState
    extends State<BoatsOutsideGovernViewBody> {
  String searchText = '';
  String filter = '';
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

  String? liecensId;
  String? boatId;
  String? boatName;
  String? boatOwnerName;
  String? strength;
  String? craft;
  @override
  void initState() {
    liecensId = "${getRandomDataByIndex(0)}";
    boatId = "${getRandomDataByIndex(1)}";
    boatName = "${getRandomDataByIndex(2)}";
    boatOwnerName = "${getRandomBoatOwnersName()}";
    strength = "${getRandomDataByIndex(4)}";
    craft = "${getRandomDataByIndex(5)}";
    super.initState();
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
                    liecensId: liecensId,
                    boatId: boatId,
                    boatName: boatName,
                    boatOwnerName: boatOwnerName,
                    strength: strength,
                    craft: craft,
                  )),
        )
      ],
    );
  }
}
