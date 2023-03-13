import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:fuerte_task/view/screens/screen3/widgets/date_time_picker_package.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) => CalendarWeek1(
        height: 30,
        showMonth: false,
        minDate: DateTime.now().add(
          const Duration(days: -365),
        ),
        maxDate: DateTime.now().add(
          const Duration(days: 365),
        ),
        onDatePressed: (DateTime datetime) {
          setState(() {});
        },
        onDateLongPressed: (DateTime datetime) {},
        onWeekChanged: () {},
        monthViewBuilder: (DateTime time) => Align(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              DateFormat.yMMMM().format(time),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      );
}
