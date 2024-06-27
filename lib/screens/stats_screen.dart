import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test1/widget/drawer_widget.dart';
import 'package:test1/widget/stats_widget.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  late final ValueNotifier<DateTime> _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = ValueNotifier(DateTime.now());
    _selectedDay = _focusedDay.value;
  }

  @override
  void dispose() {
    _focusedDay.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Stats'),
          actions: [
            IconButton(
              icon: const Icon(Icons.safety_check),
              tooltip: "How Statistic works",
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          TextButton(
                            child: const Text("Got it!"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                        title: const Text("Here's how Statistic works:"),
                        content: const Text(
                            "Statistic show your progress as you build up habits. Mark all of today's habits as done to see your progress grow. You can also see your progress in the calendar view. Keep up the good work!"),
                      );
                    });
              },
            ),
            IconButton(
              icon: const Icon(Icons.safety_check_outlined),
              tooltip: "Reset Life Log",
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          TextButton(
                            child: const Text("No"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: const Text("Yes"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                        title: const Text("Reset Life Log"),
                        content: const Text(
                            "All habit history will be deleted. Are you sure?"),
                      );
                    });
              },
            ),
          ],
        ),
        drawer: drawerItem('', context),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: TableCalendar(
                        firstDay: DateTime.utc(2020, 1, 1),
                        lastDay: DateTime.utc(2030, 12, 31),
                        focusedDay: _focusedDay.value,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay.value =
                                focusedDay; // update `_focusedDay`
                          });
                        },
                        calendarFormat: CalendarFormat.month,
                        availableCalendarFormats: const {
                          CalendarFormat.month: 'Month'
                        }, // Only month view
                        onFormatChanged: (format) {
                          // Optionally use `setState` to update the calendar format
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay.value = focusedDay;
                        },
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    box1(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        carditem(
                            iconData: Icons.calendar_today,
                            title: 'Total perfect days',
                            value: '0 days',
                            color: Colors.purple),
                        carditem(
                          iconData: Icons.check_circle,
                          title: 'Total times completed',
                          value: '2',
                          color: Colors.green,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        carditem(
                          iconData: Icons.trending_up,
                          title: 'Habit completion rate',
                          value: '50%',
                          color: Colors.orange,
                        ),
                        carditem(
                          iconData: Icons.bar_chart,
                          title: 'Average per daily',
                          value: '2,0',
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}
