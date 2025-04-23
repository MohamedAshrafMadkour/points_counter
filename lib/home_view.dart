import 'package:flutter/material.dart';
import 'package:points_counter/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Points Counter',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
