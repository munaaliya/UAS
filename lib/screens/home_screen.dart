import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test1/widget/drawer_widget.dart';
import 'package:test1/widget/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: drawerItem('', context),
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          color: const Color(0xFF191919),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello, Adrian',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Tooltip(
                    message: "Profile Picture",
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Black girl.jpeg'),
                        radius: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Have a productive day!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dayButton('18', 'Fri'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('19', 'Sat'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('20', 'Sun'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('21', 'Mon'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('24', 'Thu'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('22', 'Tue'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('26', 'Sat'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('23', 'Wed'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('25', 'Fri'),
                    const SizedBox(
                      width: 5,
                    ),
                    dayButton('27', 'Sun'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  taskcard(
                    'Projects',
                    Icons.folder_open,
                    5,
                    const Color(0xFFB4C4D6),
                  ),
                  taskcard(
                    'Work',
                    Icons.drive_eta,
                    3,
                    Color.fromARGB(255, 154, 151, 198),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  taskcard(
                    'Daily Tasks',
                    Icons.list_alt,
                    7,
                    Color.fromARGB(255, 34, 174, 167),
                  ),
                  taskcard(
                    'Groceries',
                    Icons.shopping_bag,
                    4,
                    Color.fromARGB(255, 225, 161, 255),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Today\'s Task',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              taskitem(
                'Attend Femi\'s Birthday Party',
                Icons.circle_outlined,
                'Buy gifts on the way and pick up cake from the bakery. (6 PM | Fresh Elements).....',
                'Moderate',
                'Not Started',
                '24/05/2024',
              ),
              const SizedBox(height: 16),
              taskitem(
                'Landing Page Design For UX Foundry',
                Icons.circle_outlined,
                'Get the work done by EOD and discuss payment with Lonewolf. (4 PM | Google meet)',
                'Moderate',
                'In Progress',
                '24/05/2024',
              ),
              const SizedBox(height: 16),
              taskitem(
                'Landing Page Design For UX Foundry',
                Icons.circle_outlined,
                'Get the work done by EOD and discuss payment with Lonewolf. (4 PM | Google meet)',
                'Moderate',
                'In Progress',
                '24/05/2024',
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ]),
    );
  }
}
