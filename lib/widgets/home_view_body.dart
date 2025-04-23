import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/adding_points_cubit.dart';
import 'package:points_counter/cubit/adding_points_state.dart';
import 'package:points_counter/widgets/custom_divider.dart';
import 'package:points_counter/widgets/custom_elevated_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddingPointsCubit, PointsState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                    Text(
                      state.teamAPoints.toString(),
                      style:
                          const TextStyle(fontSize: 150, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomElevatedButton(
                      text: 'Add 1 Point',
                      onPressed: () {
                        BlocProvider.of<AddingPointsCubit>(context)
                            .addOnePointsA();
                      },
                    ),
                    const SizedBox(height: 32),
                    CustomElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AddingPointsCubit>(context)
                              .addTwoPointsA();
                        },
                        text: 'Add 2 Point'),
                    const SizedBox(height: 32),
                    CustomElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AddingPointsCubit>(context)
                              .addThreePointsA();
                        },
                        text: 'Add 3 Point')
                  ],
                ),
                const CustomDivider(),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      state.teamBPoints.toString(),
                      style:
                          const TextStyle(fontSize: 150, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AddingPointsCubit>(context)
                              .addOnePointsB();
                        },
                        text: 'Add 1 Point'),
                    const SizedBox(height: 32),
                    CustomElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AddingPointsCubit>(context)
                              .addTwoPointsB();
                        },
                        text: 'Add 2 Point'),
                    const SizedBox(height: 32),
                    CustomElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AddingPointsCubit>(context)
                              .addThreePointsB();
                        },
                        text: 'Add 3 Point'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            CustomElevatedButton(
                onPressed: () {
                  BlocProvider.of<AddingPointsCubit>(context).reset();
                },
                text: 'Reset'),
            const SizedBox(height: 150)
          ],
        );
      },
    );
  }
}
