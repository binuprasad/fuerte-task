import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:fuerte_task/screens/screen3/date_time_picker_package.dart';

class Date extends StatefulWidget {
  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  // final CalendarWeekController _controller = CalendarWeekController();

  @override
  Widget build(BuildContext context) => 
       
       
        Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 1)
            ]),
            child: CalendarWeek1(
              // controller: _controller,
              height: 30,
              showMonth: false,
              minDate: DateTime.now().add(
                const Duration(days: -365),
              ),
              maxDate: DateTime.now().add(
                const Duration(days: 365),
              ),
              onDatePressed: (DateTime datetime) {
                // Do something
                setState(() {});
              },
              onDateLongPressed: (DateTime datetime) {
                // Do something
              },
              onWeekChanged: () {
                // Do something
              },
              monthViewBuilder: (DateTime time) => Align(
                // alignment: FractionalOffset.center,
                child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    child: 
                    Text(
                      DateFormat.yMMMM().format(time),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),),
              ),
              
            ),);
    
}