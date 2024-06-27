// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ChallengesTab extends StatefulWidget {
  const ChallengesTab({super.key});

  @override
  _ChallengesTabState createState() => _ChallengesTabState();
}

class _ChallengesTabState extends State<ChallengesTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Challenges tab'),
    );
  }
}