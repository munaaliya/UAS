import 'package:flutter/material.dart';

// GA DIPAKE

Widget settingItem(
    String title, Future<void> selectTime, BuildContext context) {
  return Padding(
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
            selectTime;
          },
          child: const ListTile(
            leading: Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            ),
            title: Text(
              'Morning',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Text(
              '00:00',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            selectTime;
          },
          child: const ListTile(
            leading: Icon(
              Icons.cloud,
              color: Colors.blue,
            ),
            title: Text(
              'Afternoon',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Text(
              '12:00',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            selectTime;
          },
          child: const ListTile(
            leading: Icon(
              Icons.nightlight_round,
              color: Colors.yellow,
            ),
            title: Text(
              'Evening',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Text(
              '17:00',
              style: TextStyle(
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
        const ListTile(
          leading: Icon(
            Icons.straighten,
            color: Colors.red,
          ),
          title: Text(
            'Units of measure',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: Text(
            'Metric',
            style: TextStyle(
              color: Colors.grey,
            ),
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
            value: true,
            onChanged: (value) {},
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
            value: false,
            onChanged: (value) {},
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey,
          ),
        ),
        const ListTile(
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
        const ListTile(
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
        const ListTile(
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
        const ListTile(
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
        const ListTile(
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
      ],
    ),
  );
}
