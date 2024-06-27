import 'package:flutter/material.dart';
import 'package:test1/screens/alarm_screen.dart';
import 'package:test1/widget/drawer_widget.dart';
import 'package:test1/widget/notfikasi_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'HABITS'),
              Tab(text: 'CHALLENGES'),
            ],
          ),
        ),
        drawer: drawerItem('', context),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: TabBarView(
            children: [
              HabitsTab(),
              ChallengesTab(),
            ],
          ),
        ),
      ),
    );
  }
}
