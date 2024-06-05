import 'package:flutter/material.dart';
import 'package:kitchen/app/constants/colorsconstants.dart';

import 'package:table_calendar/table_calendar.dart';

class ConfirmDateSession extends StatefulWidget {
  const ConfirmDateSession({super.key});

  @override
  State<ConfirmDateSession> createState() => _ConfirmDateSessionState();
}

class _ConfirmDateSessionState extends State<ConfirmDateSession> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  final kToday = DateTime.now();
  late final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
  late final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            child: TableCalendar(
              rowHeight: screenSize.height * 0.070,
              headerStyle: HeaderStyle(
                headerMargin: const EdgeInsets.only(top: 25),
                titleCentered: true,
                formatButtonVisible: false,
                titleTextStyle: TextStyle(
                  fontSize: screenSize.width * 0.022,
                ),
              ),
              daysOfWeekHeight: screenSize.height * 0.08,
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    fontSize: screenSize.width * 0.022,
                    fontWeight: FontWeight.bold),
                weekendStyle: TextStyle(
                    fontSize: screenSize.width * 0.022,
                    fontWeight: FontWeight.bold),
              ),
              calendarStyle: CalendarStyle(
                selectedDecoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                todayDecoration: const BoxDecoration(
                  color: Mycolors.appColor,
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.022,
                ),
                todayTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: screenSize.width * 0.022,
                ),
                defaultTextStyle: TextStyle(
                  fontSize: screenSize.width * 0.022,
                ),
                weekendTextStyle: TextStyle(
                  fontSize: screenSize.width * 0.022,
                ),
                outsideTextStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: screenSize.width * 0.022,
                ),
              ),
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              calendarFormat: CalendarFormat.month,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {},
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
          ),
        ),
      ],
    );
  }
}
