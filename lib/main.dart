import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/adding_points_cubit.dart';
import 'package:points_counter/home_view.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddingPointsCubit(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeView()),
    );
  }
}
