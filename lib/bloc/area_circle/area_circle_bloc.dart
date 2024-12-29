import 'package:flutter_bloc/flutter_bloc.dart';

import 'area_circle_event.dart';

class AreaCircleBloc extends Bloc<AreaCircleEvent, double> {
  AreaCircleBloc() : super(0.0) {
    on<CalculateAreaEvent>((event, emit) {
      final double radius = event.radius;
      final double area = 3.14159 * radius * radius;
      emit(area);
    });
  }
}
