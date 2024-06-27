// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/screens/home_screen.dart';

class Loading_screen extends StatefulWidget {
  const Loading_screen({super.key});

  @override
  State<Loading_screen> createState() => _loading_screenState();
}

class _loading_screenState extends State<Loading_screen> {
  bool download = true;

  @override
  void initState() {
    super.initState();
    startdownload();
  }

  void startdownload() {
    // Download Data
    Timer(const Duration(seconds: 3), () {
      setState(() {
        download = !download;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: download
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/goals.png',
                          width: 100, height: 100),
                      const SizedBox(height: 20),
                    ],
                  )
                : const HomeScreen()));
  }
}
