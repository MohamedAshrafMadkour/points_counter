class PointsState {
  final int teamAPoints;
  final int teamBPoints;

  PointsState({required this.teamAPoints, required this.teamBPoints});

  PointsState copyWith({int? teamAPoints, int? teamBPoints}) {
    return PointsState(
      teamAPoints: teamAPoints ?? this.teamAPoints,
      teamBPoints: teamBPoints ?? this.teamBPoints,
    );
  }
}
