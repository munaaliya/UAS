import 'package:flutter/material.dart';
import 'package:test1/widget/drawer_widget.dart';
import 'package:test1/widget/setting_widget.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TimeOfDay _selectedTime = TimeOfDay.now();
  String morningTime = "00:00";
  String afternoonTime = "12:00";
  String eveningTime = "17:00";
  List<String> measurementList = ['Metric', 'U.S'];
  String measurement = "Metric";
  bool soundValue = true;
  bool vacationValue = false;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: drawerItem('', context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reasons to Upgrade',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'TIME OF DAY',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  setState(() async {
                    await _selectTime(context);

                    morningTime = _formatTime(_selectedTime);
                  });
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.wb_sunny,
                    color: Colors.orange,
                  ),
                  title: const Text(
                    'Morning',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                    morningTime,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() async {
                    await _selectTime(context);

                    afternoonTime = _formatTime(_selectedTime);
                  });
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.cloud,
                    color: Colors.blue,
                  ),
                  title: const Text(
                    'Afternoon',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                    afternoonTime,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() async {
                    await _selectTime(context);

                    eveningTime = _formatTime(_selectedTime);
                  });
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.nightlight_round,
                    color: Colors.yellow,
                  ),
                  title: const Text(
                    'Evening',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Text(
                    eveningTime,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'GENERAL',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(
                  Icons.straighten,
                  color: Colors.red,
                ),
                title: const Text(
                  'Units of measure',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: DropdownButton<String>(
                  value: measurement,
                  onChanged: (String? newValue) {
                    setState(() {
                      measurement = newValue!;
                    });
                  },
                  items: measurementList
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.volume_up,
                  color: Colors.white,
                ),
                title: const Text(
                  'Sound',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: Switch(
                  value: soundValue,
                  onChanged: (value) {
                    setState(() {
                      soundValue = value;
                    });
                  },
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.umbrella,
                  color: Colors.yellow,
                ),
                title: const Text(
                  'Vacation mode',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: const Text(
                  'Put habits on pause, and keep your stats',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: Switch(
                  value: vacationValue,
                  onChanged: (value) {
                    setState(() {
                      vacationValue = value;
                    });
                  },
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Log in with web account',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              MaterialButton(
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
                          title: const Text("Need Help?"),
                          content: const Text(
                              "If you have any questions, feedback, or need assistance, please feel free to contact our support team. Email: support@habittracker.com. We're here to help you make the most of Habit Tracker. Happy habit building!"),
                        );
                      });
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.purple,
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.thumb_up,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Rate us',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Send feedback',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Share app',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
