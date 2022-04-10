// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/Widgets/circle_avatar.dart';
import 'package:ibilling/core/constants/constants.dart';
import 'package:ibilling/Widgets/size_config.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class ContractsPage extends StatefulWidget {
  ContractsPage({Key? key}) : super(key: key);

  @override
  State<ContractsPage> createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {
  final DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xff000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  circleAvatar.circleAvatarim(12),
                  const Text(
                    "Contracts",
                    style: TextStyle(fontSize: 21),
                  ),
                  SizedBox(width: getWidth(180)),
                  InkWell(
                    highlightColor: Colors.white,
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/icons/contracts/filtr.svg",
                      color: Contsants.iconColor,
                    ),
                  ),
                  const Text(
                    "|",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                    hoverColor: Colors.white,
                    onTap: () {},
                    splashColor: Colors.white,
                    child: SvgPicture.asset(
                      "assets/icons/contracts/vector.svg",
                      color: Contsants.iconColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "February, 2021",
                        style: TextStyle(
                            color: Color(
                              0xffDADADA,
                            ),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon:
                                SvgPicture.asset("assets/icons/arrow_left.svg"),
                            onPressed: () {
                              _controller.animateToSelection();
                            },
                          ),
                          IconButton(
                            icon: SvgPicture.asset(
                                "assets/icons/arrow_right.svg"),
                            onPressed: () {
                              _controller.animateToSelection();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  MyCalendar(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
               color: Color(0xff000000),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: getHeight(40),
                      width: getWidth(80),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Contsants.bottombackColor,
                      ),
                      child: Center(
                        child: Text(
                          "Contracts",
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Invoice"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Color(0xff000000),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: getHeight(148),
                      width: getWidth(343),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.red,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox MyCalendar() {
    return SizedBox(
      height: 80,
      child: DatePicker(
        DateTime.now(),
        width: 46,
        height: 68,
        controller: _controller,
        initialSelectedDate: DateTime.now(),
        selectionColor: Contsants.calendarcolor,
        selectedTextColor: Colors.white,
        deactivatedColor: Colors.white,
        onDateChange: (data) {
          setState(() {
            _selectedValue = data;
          });
        },
      ),
    );
  }
}
