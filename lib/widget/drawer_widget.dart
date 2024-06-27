import 'package:flutter/material.dart';

Widget drawerItem(String title, BuildContext context) {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /// Header of the Drawer
          Container(
            height: 150,
            color: const Color(0xFF2B2B2B),
            child: const Center(
              child: Text(
                'Habit Tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                selectedTileColor: Colors.blue,
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                selectedTileColor: Colors.blue,
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              ListTile(
                leading: const Icon(Icons.bar_chart_outlined),
                title: const Text('Your stats'),
                selectedTileColor: Colors.blue,
                onTap: () {
                  Navigator.pushNamed(context, '/stats');
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications_outlined),
                title: const Text('Notifications'),
                selectedTileColor: Colors.blue,
                onTap: () {
                  Navigator.pushNamed(context, '/notifications');
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Settings'),
                selectedTileColor: Colors.blue,
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                },
              ),
            ],
          )
        ],
      ),
    ),
  );
}
