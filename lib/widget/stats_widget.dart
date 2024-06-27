import 'package:flutter/material.dart';

Widget carditem({
  required IconData iconData,
  required String title,
  required String value,
  required Color color,
}) {
  return Container(
    width: 190,
    height: 150,
    decoration: BoxDecoration(
      image: const DecorationImage(
        image: AssetImage('assets/images/Ground.jpeg'),
        fit: BoxFit.cover,
      ),
      color: Colors.white70,
      borderRadius: BorderRadius.circular(20),
    ),
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: color,
          size: 30,
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget box1() {
  return Center(
    child: Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/Ground.jpeg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '0 days',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3B82F6),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your current streak',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.emoji_events, size: 20, color: Colors.amber),
                SizedBox(width: 5),
                Text(
                  '0 days',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text(
              'Your longest streak',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
