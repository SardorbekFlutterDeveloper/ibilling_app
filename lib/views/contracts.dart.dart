// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          myAppBar(),
          _kalendar(),
          // SizedBox(
          //   height: 85,
          //   child: _buttons(),
          // ),
          // SizedBox(
          //   child: _main(),
          // ),
        ],
      ),
    );
  }

  Container _main() {
    return Container(
      color: Color(0xff000000),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: getHeight(148),
            width: getWidth(343),
            margin: EdgeInsets.only(left: 16, right: 16, top: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0xff2A2A2D),
            ),
          );
        },
      ),
    );
  }

  Container _buttons() {
    return Container(
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
    );
  }

  Column _kalendar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedValue.toString(),
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
                  icon: SvgPicture.asset("assets/icons/arrow_left.svg"),
                  onPressed: () {
                    setState(() {
                      _controller.animateToSelection(
                        curve: Curves.linear,
                        duration: Duration(seconds: 1),
                      );

                      // _controller.jumpToSelection();
                    });
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset("assets/icons/arrow_right.svg"),
                  onPressed: () {
                    setState(() {
                      // _controller.jumpToSelection();

                      _controller.animateToSelection(
                        curve: Curves.linear,
                        duration: Duration(seconds: 1),
                      );
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        Container(
          child: DatePicker(
            DateTime.now(),
            width: 60,
            height: 80,
            controller: _controller,
            initialSelectedDate: DateTime.now(),
            selectionColor: Colors.black,
            selectedTextColor: Colors.white,
            inactiveDates: [
              // DateTime.now().add(Duration(days: 3)),
              // DateTime.now().add(Duration(days: 4)),
              // DateTime.now().add(Duration(days: 7))
            ],
            onDateChange: (date) {
              // New date selected
              setState(() {
                _selectedValue = date;
              });
            },
          ),
        ),
        // MyCalendar(),
      ],
    );
  }

  DatePicker datePickerMethod() {
    return DatePicker(
      DateTime.now(),
      controller: _controller,
      initialSelectedDate: DateTime.now(),
      selectionColor: Colors.blueAccent,
      selectedTextColor: Colors.white,
    );
  }

  Container myAppBar() {
    return Container(
      height: 51,
      color: Color(0xff000000),
      margin: EdgeInsets.only(top: 43),
      padding: EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          circleAvatar.circleAvatarim(12),
          const Text(
            "Contracts",
            style: TextStyle(fontSize: 21),
          ),
          SizedBox(width: getWidth(140)),
          InkWell(
            highlightColor: Colors.white,
            onTap: () {},
            child: SvgPicture.asset(
              "assets/icons/contracts/filtr.svg",
              height: getHeight(24),
              color: Contsants.iconColor,
            ),
          ),
          SizedBox(
            width: getWidth(21),
          ),
          const Text(
            "|",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: getWidth(21),
          ),
          InkWell(
            hoverColor: Colors.white,
            onTap: () {},
            splashColor: Colors.white,
            child: SvgPicture.asset(
              "assets/icons/contracts/vector.svg",
              height: getHeight(21),
              color: Contsants.iconColor,
            ),
          ),
          SizedBox(
            width: getWidth(2 - 0),
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
