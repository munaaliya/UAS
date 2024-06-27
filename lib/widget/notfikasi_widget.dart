// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class HabitsTab extends StatefulWidget {
  const HabitsTab({super.key});

  @override
  _HabitsTabState createState() => _HabitsTabState();
}

class _HabitsTabState extends State<HabitsTab> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HabitCard(
            title: 'Today\'s plan',
            subtitle:
                '“Morning: 5 habits, Afternoon: 1 habits, Evening: 6 habits, Do anytime: 2 habits”',
            time: '07:30',
          ),
          SizedBox(height: 16.0),
          HabitCard(
            title: 'Morning plan',
            subtitle:
                '“You have 5 habits for this morning and 2 more you can do.”',
            icon: Icons.sunny,
          ),
          SizedBox(height: 16.0),
          HabitCard(
            title: 'Afternoon plan',
            subtitle:
                '“You have 1 habits for this afternoon and 2 more you can do.”',
            icon: Icons.wb_sunny,
          ),
          SizedBox(height: 16.0),
          HabitCard(
            title: 'Evening plan',
            subtitle:
                '“You have 6 habits for this evening and 2 more you can do.”',
            icon: Icons.nightlight_round,
          ),
          SizedBox(height: 16.0),
          HabitCard(
            title: 'Your results for today',
            subtitle: '“3 habits completed, 1 habits skipped, 14 habits left”',
            icon: Icons.party_mode,
            time: '20:45',
          ),
        ],
      ),
    );
  }
}

class HabitCard extends StatefulWidget {
  const HabitCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon,
    this.time,
  });

  final String title;
  final String subtitle;
  final IconData? icon;
  final String? time;

  @override
  _HabitCardState createState() => _HabitCardState();
}

class _HabitCardState extends State<HabitCard> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            widget.subtitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          if (widget.icon != null)
            Icon(
              widget.icon,
              color: Colors.white,
              size: 24.0,
            ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.time != null)
                Text(
                  widget.time!,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              Switch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
                activeColor: Colors.blue,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
