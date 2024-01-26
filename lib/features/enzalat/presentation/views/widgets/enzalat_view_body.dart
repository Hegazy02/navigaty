import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/services/excel_files.dart';
import 'package:navigaty/core/widgets/custom_appbar.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/CustomTextField.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/custom_drop_down_menu.dart';
import 'package:navigaty/features/soroh_boats/presentation/views/widgets/detailes_card.dart';
import 'package:navigaty/main.dart';

class EnzalatViewBody extends StatefulWidget {
  final String title;
  const EnzalatViewBody({super.key, required this.title});

  @override
  State<EnzalatViewBody> createState() => _EnzalatViewBodyState();
}

class _EnzalatViewBodyState extends State<EnzalatViewBody> {
  String searchText = '';
  String filter = '';
  List filteredData = [];
  filterCraftsData({required String value}) {
    setState(() {
      filteredData =
          data.where((e) => e["craft"].toString().contains(value)).toList();
    });
  }

  filterBoatsNamesData({required String value}) {
    setState(() {
      filteredData =
          data.where((e) => e["boatName"].toString().contains(value)).toList();
      print("asd $value");
    });
  }

  // List liecensId = [];
  // List boatId = [];
  // List boatName = [];
  // List boatOwnerName = [];
  // List strength = [];
  // List craft = [];
  // List image = [];
  List data = [];
  @override
  void initState() {
    data = getData();
    filteredData = data;
    // print("ddddd");
    // liecensId = getRandomDataByIndex(0);
    // boatId = getRandomDataByIndex(1);
    // boatName = getRandomDataByIndex(2);
    // boatOwnerName = getRandomBoatOwnersName();
    // strength = getRandomDataByIndex(4);
    // craft = getRandomDataByIndex(5);
    // image = getRandomBoatImages();

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
                    liecensId: filteredData[index]['liecensId'],
                    boatId: filteredData[index]['boatId'],
                    boatName: filteredData[index]['boatName'],
                    boatOwnerName: filteredData[index]['boatOwnerName'],
                    strength: filteredData[index]['strength'],
                    craft: filteredData[index]['craft'],
                    image: filteredData[index]['image'],
                  )),
        )
      ],
    );
  }
}
