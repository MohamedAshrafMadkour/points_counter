import 'package:bloc/bloc.dart';
import 'package:points_counter/cubit/adding_points_state.dart';

class AddingPointsCubit extends Cubit<PointsState> {
  AddingPointsCubit() : super(PointsState(teamAPoints: 0, teamBPoints: 0));
  void addOnePointsA() {
    emit(state.copyWith(teamAPoints: state.teamAPoints + 1));
  }

  void addTwoPointsA() {
    emit(state.copyWith(teamAPoints: state.teamAPoints + 2));
  }

  void addThreePointsA() {
    emit(state.copyWith(teamAPoints: state.teamAPoints + 3));
  }

  void addOnePointsB() {
    emit(state.copyWith(teamBPoints: state.teamBPoints + 1));
  }

  void addTwoPointsB() {
    emit(state.copyWith(teamBPoints: state.teamBPoints + 2));
  }

  void addThreePointsB() {
    emit(state.copyWith(teamBPoints: state.teamBPoints + 3));
  }

  void reset() {
    emit(state.copyWith(teamAPoints: 0, teamBPoints: 0));
  }
}
